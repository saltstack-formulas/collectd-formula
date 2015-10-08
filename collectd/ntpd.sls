{% from "collectd/map.jinja" import collectd_settings with context %}

include:
  - collectd
  - collectd.python

collectd-ntp-module:
  pip.installed:
  - name: collectd-ntp == 0.0.4
  - require_in:
    - service: collectd
  - watch_in:
    - service: collectd

{{ collectd_settings.plugindirconfig }}/ntpd.conf:
  file.managed:
    - source: salt://collectd/files/ntpd.conf
    - user: {{ collectd_settings.user }}
    - group: {{ collectd_settings.group }}
    - mode: 644
    - template: jinja
    - watch_in:
      - service: collectd-service

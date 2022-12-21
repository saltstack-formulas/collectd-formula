{% from "collectd/map.jinja" import collectd_settings with context %}

include:
  - collectd
  - collectd.workaround-salt-ssh

{{ collectd_settings.plugindirconfig }}/mysql.conf:
  file.managed:
    - source: salt://collectd/files/mysql.conf
    - user: {{ collectd_settings.user }}
    - group: {{ collectd_settings.group }}
    - mode: 600
    - template: jinja
    - require:
      - sls: collectd.workaround-salt-ssh
    - watch_in:
      - service: collectd-service

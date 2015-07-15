{% from "collectd/map.jinja" import collectd_settings with context %}

include:
  - collectd


{% if collectd_settings.plugins_deps.ping %}
collectd-ping-dependencies:
  pkg.installed:
    - names: {{ collectd_settings.plugins_deps.ping }}
    - require_in:
      - file: {{ collectd_settings.plugindirconfig }}/ping.conf
{% endif %}


{{ collectd_settings.plugindirconfig }}/ping.conf:
  file.managed:
    - source: salt://collectd/files/ping.conf
    - user: {{ collectd_settings.user }}
    - group: {{ collectd_settings.group }}
    - mode: 644
    - template: jinja
    - watch_in:
      - service: collectd-service

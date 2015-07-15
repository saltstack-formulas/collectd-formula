{% from "collectd/map.jinja" import collectd_settings with context %}

include:
  - collectd


{% if collectd_settings.plugins_deps.mysql %}
collectd-mysql-dependencies:
  pkg.installed:
    - names: {{ collectd_settings.plugins_deps.mysql }}
    - require_in:
      - file: {{ collectd_settings.plugindirconfig }}/mysql.conf
{% endif %}


{{ collectd_settings.plugindirconfig }}/mysql.conf:
  file.managed:
    - source: salt://collectd/files/mysql.conf
    - user: {{ collectd_settings.user }}
    - group: {{ collectd_settings.group }}
    - mode: 644
    - template: jinja
    - watch_in:
      - service: collectd-service

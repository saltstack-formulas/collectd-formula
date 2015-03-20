{%- from "collectd/map.jinja" import collectd_settings with context %}
{%- set postgresql_settings = collectd_settings.get('plugins:postgresql') %}

include:
  - collectd

{{ collectd_settings.plugindirconfig }}/postgresql.conf:
  file.managed:
    - source: salt://collectd/files/postgresql.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: collectd-service

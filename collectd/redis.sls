{% from "collectd/map.jinja" import collectd_settings with context %}

include:
  - collectd

libhiredis0.13:
  pkg.installed

{{ collectd_settings.plugindirconfig }}/redis.conf:
  file.managed:
    - source: salt://collectd/files/redis.conf
    - user: {{ collectd_settings.user }}
    - group: {{ collectd_settings.group }}
    - mode: 644
    - template: jinja
    - watch_in:
      - service: collectd-service


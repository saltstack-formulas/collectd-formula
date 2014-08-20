{% from "collectd/map.jinja" import collectd with context %}

include:
  - collectd.service

{{ collectd.plugindirconfig }}/apache.conf:
  file.managed:
    - source: salt://collectd/files/apache.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: collectd-service
    - defaults:
        host: {{ salt['grains.get']('host') }}

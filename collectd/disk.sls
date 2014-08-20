{% from "collectd/map.jinja" import collectd with context %}

include:
  - collectd.service

{{ collectd.plugindirconfig }}/disk.conf:
  file.managed:
    - source: salt://collectd/files/disk.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: collectd-service
    - defaults:
        matches: {{ salt['pillar.get']('collectd:plugins:disk:matches', []) }}

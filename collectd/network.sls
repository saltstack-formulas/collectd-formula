{% from "collectd/map.jinja" import collectd with context %}

include:
  - collectd.service

{{ collectd.plugindirconfig }}/network.conf:
  file.managed:
    - source: salt://collectd/files/network.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: collectd-service
    - defaults:
        host: {{ salt['pillar.get']('collectd:plugins:network:host') }}
        port: {{ salt['pillar.get']('collectd:plugins:network:port') }}

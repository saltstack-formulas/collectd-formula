{% from "collectd/map.jinja" import collectd with context %}

include:
  - collectd.service

{{ collectd.plugindirconfig }}/ping.conf:
  file.managed:
    - source: salt://collectd/files/ping.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: collectd-service
    - defaults:
        hosts: {{ salt['pillar.get']('collectd:plugins:ping:hosts', ['google.com', 'yahoo.com']) }}
        hfg: {{ salt['pillar.get']('collectd:plugins:ping:hosts_from_grains') }}
        interval: {{ salt['pillar.get']('collectd:plugins:ping:interval') }}
        timeout: {{ salt['pillar.get']('collectd:plugins:ping:timeout') }}
        ttl: {{ salt['pillar.get']('collectd:plugins:ping:ttl') }}
        sourceaddress: {{ salt['pillar.get']('collectd:plugins:ping:sourceaddress') }}
        device: {{ salt['pillar.get']('collectd:plugins:ping:device') }}
        maxmissed: {{ salt['pillar.get']('collectd:plugins:ping:maxmissed') }}
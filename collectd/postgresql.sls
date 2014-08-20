{% from "collectd/map.jinja" import collectd with context %}

include:
  - collectd.service

{{ collectd.plugindirconfig }}/postgresql.conf:
  file.managed:
    - source: salt://collectd/files/postgresql.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: collectd-service
    - defaults:
        host: {{ salt['pillar.get']('collectd:plugins:postgresql:host') }}
        port: {{ salt['pillar.get']('collectd:plugins:postgresql:port') }}
        user: {{ salt['pillar.get']('collectd:plugins:postgresql:user') }}
        pass: {{ salt['pillar.get']('collectd:plugins:postgresql:pass') }}
        name: {{ salt['pillar.get']('collectd:plugins:postgresql:name') }}
        # MasterStats: {{ salt['pillar.get']('collectd:plugins:postgresql:MasterStats') }}

{% from "collectd/map.jinja" import collectd with context %}

include:
  - collectd

{{ collectd.plugindirconfig }}/write_riemann.conf:
  file.managed:
    - source: salt://collectd/files/write_riemann.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: collectd-service
    - defaults:
        node: {{ salt['grains.get']('fqdn') }}
        host: {{ salt['pillar.get']('collectd:plugins:write_riemann:host') }}
        port: {{ salt['pillar.get']('collectd:plugins:write_riemann:port') }}
        protocol: {{ salt['pillar.get']('collectd:plugins:write_riemann:protocol') }}
        storerates: {{ salt['pillar.get']('collectd:plugins:write_riemann:storerates') }}
        alwaysappendds: {{ salt['pillar.get']('collectd:plugins:write_riemann:alwaysappendds') }}
        tag: {{ salt['pillar.get']('collectd:plugins:write_riemann:tag') }}
{% from "collectd/map.jinja" import collectd with context %}

include:
  - collectd

{{ collectd.plugindirconfig }}/write_graphite.conf:
  file.managed:
    - source: salt://collectd/files/write_graphite.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: collectd-service
    - defaults:
        node: {{ salt['grains.get']('fqdn') }}
        host: {{ salt['pillar.get']('collectd:plugins:write_graphite:host') }}
        port: {{ salt['pillar.get']('collectd:plugins:write_graphite:port') }}
        prefix: {{ salt['pillar.get']('collectd:plugins:write_graphite:prefix') }}
        postfix: {{ salt['pillar.get']('collectd:plugins:write_graphite:postfix') }}
        protocol: {{ salt['pillar.get']('collectd:plugins:write_graphite:protocol') }}
        logsenderrors: {{ salt['pillar.get']('collectd:plugins:write_graphite:logsenderrors') }}
        escapecharacter: {{ salt['pillar.get']('collectd:plugins:write_graphite:escapecharacter') }}
        separateinstances: {{ salt['pillar.get']('collectd:plugins:write_graphite:separateinstances') }}
        storerates: {{ salt['pillar.get']('collectd:plugins:write_graphite:storerates') }}
        alwaysappendds: {{ salt['pillar.get']('collectd:plugins:write_graphite:alwaysappendds') }}

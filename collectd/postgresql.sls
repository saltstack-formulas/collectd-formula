{% from "collectd/map.jinja" import collectd with context %}

{{ collectd.plugdir }}/postgresql.sls:
  file.managed:
    - source: salt://collectd/files/postgresql.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - defaults:
        host: {{ salt['pillar.get']('collectd:plugins:postgresql:host') }}
        port: {{ salt['pillar.get']('collectd:plugins:postgresql:port') }}
        user: {{ salt['pillar.get']('collectd:plugins:postgresql:user') }}
        pass: {{ salt['pillar.get']('collectd:plugins:postgresql:pass') }}
        name: {{ salt['pillar.get']('collectd:plugins:postgresql:name') }}
        # MasterStats: {{ salt['pillar.get']('collectd:plugins:postgresql:MasterStats') }}

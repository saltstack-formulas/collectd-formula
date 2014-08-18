{% from "collectd/map.jinja" import collectd with context %}

{{ collectd.plugindirconfig }}/mysql.conf:
  file.managed:
    - source: salt://collectd/files/mysql.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - defaults:
        host: {{ salt['pillar.get']('collectd:plugins:mysql:host') }}
        port: {{ salt['pillar.get']('collectd:plugins:mysql:port') }}
        user: {{ salt['pillar.get']('collectd:plugins:mysql:user') }}
        pass: {{ salt['pillar.get']('collectd:plugins:mysql:pass') }}
        name: {{ salt['pillar.get']('collectd:plugins:mysql:name') }}
        MasterStats: {{ salt['pillar.get']('collectd:plugins:mysql:MasterStats') }}

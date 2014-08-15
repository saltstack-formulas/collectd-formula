{% from "collectd/map.jinja" import collectd with context %}

{{ collectd.plugdir }}/network.sls:
  file.managed:
    - source: salt://collectd/files/network.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - defaults:
        host: {{ salt['pillar.get']('collectd:plugins:network:host') }}
        port: {{ salt['pillar.get']('collectd:plugins:network:port') }}

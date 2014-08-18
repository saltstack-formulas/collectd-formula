{% from "collectd/map.jinja" import collectd with context %}

# Link to proper java.so
# /usr/lib/collectd/java.so
{{ collectd.plugdir }}/java.sls:
  file.managed:
    - source: salt://collectd/files/java.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - defaults:
        host: {{ salt['pillar.get']('collectd:plugins:java:host', 'localhost') }}
        port: {{ salt['pillar.get']('collectd:plugins:java:port', '17264') }}
        user: {{ salt['pillar.get']('collectd:plugins:java:user', '') }}
        pass: {{ salt['pillar.get']('collectd:plugins:java:pass', '') }}


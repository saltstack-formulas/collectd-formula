{% from "collectd/map.jinja" import collectd with context %}

include:
  - collectd

{{ collectd.plugindirconfig }}/statsd.conf:
  file.managed:
    - source: salt://collectd/files/statsd.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: collectd-service
    - defaults:
        Host: {{ salt['pillar.get']('collectd:plugins:statsd:host', '"::"') }}
        Port: {{ salt['pillar.get']('collectd:plugins:statsd:port', 8125) }}

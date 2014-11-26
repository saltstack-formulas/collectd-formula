{% from "collectd/map.jinja" import collectd with context %}

include:
  - collectd

{{ collectd.plugindirconfig }}/processes.conf:
  file.managed:
    - source: salt://collectd/files/processes.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: collectd-service
    - defaults:
      Processes: {{ salt['pillar.get']('collectd:plugins:processes:processes', []) }}
      ProcessMatches: {{ salt['pillar.get']('collectd:plugins:processes:processmatches', []) }}

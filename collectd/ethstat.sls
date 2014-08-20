{% from "collectd/map.jinja" import collectd with context %}

{{ collectd.plugindirconfig }}/ethstat.conf:
  file.managed:
    - source: salt://collectd/files/ethstat.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - defaults:
        interface: {{ salt['pillar.get']('collectd:plugins:ethstat:interface', 'eth0') }}


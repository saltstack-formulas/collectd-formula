{% from "collectd/map.jinja" import collectd with context %}

include:
  - collectd.service

{{ collectd.plugindirconfig }}/interface.conf:
  file.managed:
    - source: salt://collectd/files/interface.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: collectd-service
    - defaults:
        interfaces: {{ salt['pillar.get']('collectd:plugins:interface:interface', 'eth0') }}
        IgnoreSelected: {{ salt['pillar.get']('collectd:plugins:interface:IgnoreSelected', 'false') }}

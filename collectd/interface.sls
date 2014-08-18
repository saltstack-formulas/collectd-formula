{% from "collectd/map.jinja" import collectd with context %}

{{ collectd.plugindirconfig }}/interface.sls:
  file.managed:
    - source: salt://collectd/files/interface.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - defaults:
        interfaces: {{ salt['pillar.get']('collectd:plugins:interface:interface', 'eth0') }}


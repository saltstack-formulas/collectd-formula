{% from "collectd/map.jinja" import collectd with context %}

{{ collectd.plugindirconfig }}/ntpd.sls:
  file.managed:
    - source: salt://collectd/files/ntpd.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - defaults:
        host: {{ salt['pillar.get']('collectd:plugins:ntpd:host', 'localhost') }}
        port: {{ salt['pillar.get']('collectd:plugins:ntpd:port', '123') }}
        user: {{ salt['pillar.get']('collectd:plugins:ntpd:ReverseLookups', 'false') }}


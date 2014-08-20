{% from "collectd/map.jinja" import collectd with context %}

include:
  - collectd.service

{{ collectd.plugindirconfig }}/syslog.conf:
  file.managed:
    - source: salt://collectd/files/syslog.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: collectd-service
    - defaults:
        LogLevel: {{ salt['pillar.get']('collectd:plugins:syslog:LogLevel', 'info') }}

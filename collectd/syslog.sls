{% from "collectd/map.jinja" import collectd with context %}

{{ collectd.plugindirconfig }}/syslog.sls:
  file.managed:
    - source: salt://collectd/files/syslog.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - defaults:
        LogLevel: {{ salt['pillar.get']('collectd:plugins:syslog:LogLevel', 'info') }}

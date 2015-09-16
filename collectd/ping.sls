{% from "collectd/map.jinja" import collectd_settings with context %}

include:
  - collectd

{% set ping_pkg = {
  'RedHat': 'collectd-ping',
  'Debian': 'liboping0'
}.get(grains['os_family']) %}

{{ ping_pkg }}:
  pkg.installed

{{ collectd_settings.plugindirconfig }}/ping.conf:
  file.managed:
    - source: salt://collectd/files/ping.conf
    - user: {{ collectd_settings.user }}
    - group: {{ collectd_settings.group }}
    - mode: 644
    - template: jinja
    - require:
      - pkg: {{ ping_pkg }}
    - watch_in:
      - service: collectd-service

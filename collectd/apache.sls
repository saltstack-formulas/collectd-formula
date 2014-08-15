{% from "collectd/map.jinja" import collectd with context %}

{{ collectd.plugdir }}/apache.sls:
  file.managed:
    - source: salt://collectd/files/apache.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - defaults:
        host: {{ salt['grains.get']('host') }}

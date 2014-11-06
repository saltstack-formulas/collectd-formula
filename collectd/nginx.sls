{% from "collectd/map.jinja" import collectd with context %}

include:
  - collectd

{{ collectd.plugindirconfig }}/nginx.conf:
  file.managed:
    - source: salt://collectd/files/nginx.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - watch_in:
      - service: collectd-service
    - defaults:
        url: {{ salt['pillar.get']('collectd:plugins:nginx:url', 'http://localhost/check_status') }}
        user: {{ salt['pillar.get']('collectd:plugins:nginx:user') }}
        password: {{ salt['pillar.get']('collectd:plugins:nginx:password') }}
        verifypeer: {{ salt['pillar.get']('collectd:plugins:nginx:verifypeer') }}
        verifyhost: {{ salt['pillar.get']('collectd:plugins:nginx:verifyhost') }}
        cacert: {{ salt['pillar.get']('collectd:plugins:nginx:cacert') }}

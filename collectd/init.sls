{% from "collectd/map.jinja" import collectd with context %}

collectd:
  pkg:
    - installed
    - name: {{ collectd.pkg }}
  service:
    - running
    - name: {{ collectd.service }}
    - enable: True

{{ collectd.plugindirconfig }}:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 644
    - makedirs: True

{{ collectd.conf }}:
  file.managed:
    - source: salt://collectd/files/collectd.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - defaults:
        hostname: {{ salt['grains.get']('fqdn') }}
        FQDNLookup: {{ salt['pillar.get']('collectd:FQDNLookup', false) }}
        plugin: {{ salt['pillar.get']('collectd:plugin', false) }}
        plugindirconfig: {{ collectd.plugindirconfig }}
        defaults: {{ salt['pillar.get']('collectd:plugins:defaults') }}

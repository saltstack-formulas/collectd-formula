{% from "collectd/map.jinja" import collectd with context %}

collectd-java:
    file.rename:
        - name: {{ collectd.javalib }}
        - source: {{ collectd.javalib }}.new
        - force: False
        - makedirs: False

{{ collectd.javalib }}:
    file.symlink:
        - target: {{ salt['pillar.get']('collectd:plugins:java:lib') }}
        - makedirs: False


{{ collectd.plugdir }}/java.sls:
  file.managed:
    - source: salt://collectd/files/java.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - defaults:
        host: {{ salt['pillar.get']('collectd:plugins:java:host', 'localhost') }}
        port: {{ salt['pillar.get']('collectd:plugins:java:port', '17264') }}
        user: {{ salt['pillar.get']('collectd:plugins:java:user', '') }}
        pass: {{ salt['pillar.get']('collectd:plugins:java:pass', '') }}


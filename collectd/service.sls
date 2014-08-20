{% from "collectd/map.jinja" import collectd with context %}

collectd-service:
  service:
    - running
    - name: {{ collectd.service }}
    - enable: True
    - require:
      - pkg: {{ collectd.pkg }}

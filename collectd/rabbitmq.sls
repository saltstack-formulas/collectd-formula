{% from "collectd/map.jinja" import collectd_settings with context %}

include:
  - collectd

collectd-rabbitmq-module:
  pip.installed:
  - name: collectd-rabbitmq
  - require_in:
    - service: collectd-service
  - watch_in:
    - service: collectd-service

{{ collectd_settings.plugindirconfig }}/rabbitmq.conf:
  file.managed:
    - source: salt://collectd/files/rabbitmq.conf
    - user: {{ collectd_settings.user }}
    - group: {{ collectd_settings.group }}
    - mode: 600
    - template: jinja
    - watch_in:
      - service: collectd-service


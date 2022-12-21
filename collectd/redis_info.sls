{% from "collectd/map.jinja" import collectd_settings with context %}

include:
  - collectd
  - collectd.python
  - collectd.workaround-salt-ssh

collectd-redis-module:
  pip.installed:
  - name: git+https://github.com/ministryofjustice/redis-collectd-plugin@make-it-a-pip
  - require_in:
    - service: collectd-service
  - watch_in:
    - service: collectd-service

{{ collectd_settings.plugindirconfig }}/redis_info.conf:
  file.managed:
    - source: salt://collectd/files/redis_info.conf
    - user: {{ collectd_settings.user }}
    - group: {{ collectd_settings.group }}
    - mode: 644
    - template: jinja
    - require:
      - sls: collectd.workaround-salt-ssh
    - watch_in:
      - service: collectd-service

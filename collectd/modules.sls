{% from "collectd/map.jinja" import collectd_settings with context %}

include:
  - collectd

{{ collectd_settings.moduledirconfig }}:
  file.recurse:
    - source: salt://collectd/modules/files
    - user: {{ collectd_settings.user }}
    - group: {{ collectd_settings.group }}
    - file_mode: 644
    - dir_mode: 755
    - watch_in:
      - service: collectd-service

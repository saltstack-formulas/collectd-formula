{% from "collectd/map.jinja" import collectd_settings with context %}

include:
  - collectd.service

collectd:
  pkg.installed:
    - name: {{ collectd_settings.pkg }}

{{ collectd_settings.plugindirconfig }}:
  file.directory:
    - user: {{ collectd_settings.user }}
    - group: {{ collectd_settings.group }}
    - dir_mode: 755
    - file_mode: 644
    - makedirs: True
    - require_in:
      - service: collectd-service # set proper file mode before service runs

{{ collectd_settings.config }}:
  file.managed:
    - source: salt://collectd/files/collectd.conf
    - user: {{ collectd_settings.user }}
    - group: {{ collectd_settings.group }}
    - mode: 644
    - template: jinja
    - watch_in:
      - service: collectd-service

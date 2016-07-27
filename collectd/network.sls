{% from "collectd/map.jinja" import collectd_settings with context %}

include:
  - collectd

{{ collectd_settings.plugindirconfig }}/network.conf:
  file.managed:
    - source: salt://collectd/files/network.conf
    - user: {{ collectd_settings.user }}
    - group: {{ collectd_settings.group }}
    - mode: '0600'
    - template: jinja
    - watch_in:
      - service: collectd-service

{% if collectd_settings.plugins.network.authfile is defined and collectd_settings.plugins.network.username is defined and collectd_settings.plugins.network.type == 'Listen' %}
{{ collectd_settings.plugins.network.authfile }}:
  file.managed:
    - user: {{ collectd_settings.user }}
    - group: {{ collectd_settings.group }}
    - mode: '0600'
    - contents: '{{ collectd_settings.plugins.network.username }}: {{ collectd_settings.plugins.network.password }}'
    - watch_in:
      - service: collectd-service
{% endif %}

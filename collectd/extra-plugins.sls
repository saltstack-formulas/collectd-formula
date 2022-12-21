{% from "collectd/map.jinja" import collectd_settings with context %}

include:
  - collectd
  - collectd.workaround-salt-ssh

{%- for plugin, plugin_settings in collectd_settings.plugins.extra.items() %}
{{ collectd_settings.plugindirconfig }}/{{ plugin }}.conf:
  file.managed:
    - source: salt://collectd/files/extra.conf
    - user: {{ collectd_settings.user }}
    - group: {{ collectd_settings.group }}
    - mode: 644
    - template: jinja
    - defaults:
        plugin: {{ plugin }}
        plugin_settings: {{ plugin_settings }}
    - require:
      - sls: collectd.workaround-salt-ssh
    - watch_in:
      - service: collectd-service
{% endfor %}

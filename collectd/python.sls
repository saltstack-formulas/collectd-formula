{% from "collectd/map.jinja" import collectd_settings with context %}

include:
  - collectd


{% if collectd_settings.plugins_deps.python %}
collectd-python-dependencies:
  pkg.installed:
    - names: {{ collectd_settings.plugins_deps.python }}
    - require_in:
      - file: {{ collectd_settings.plugindirconfig }}/python.conf
{% endif %}


{{ collectd_settings.plugindirconfig }}/python.conf:
  file.managed:
    - source: salt://collectd/files/python.conf
    - user: {{ collectd_settings.user }}
    - group: {{ collectd_settings.group }}
    - mode: 644
    - template: jinja
    - watch_in:
      - service: collectd-service

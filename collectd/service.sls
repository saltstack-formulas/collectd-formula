{% from "collectd/map.jinja" import collectd_settings with context %}

collectd-service:
  {% if collectd_settings.enable_service %}
  service.running:
  {% else %}
  service.dead:
  {% endif %}
    - name: {{ collectd_settings.service }}
    - enable: {{ collectd_settings.enable_service }}
    - require:
      - pkg: {{ collectd_settings.pkg }}

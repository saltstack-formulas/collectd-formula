{% from "collectd/map.jinja" import collectd_settings with context %}

include:
  - collectd

{%- if collectd_settings.additional_packages is defined and collectd_settings.additional_packages %}
collectd_additional_packages:
  pkg.installed:
    - pkgs:
  {%- for pkg in collectd_settings.additional_packages %}
      - {{ pkg.name }}{% if pkg.version is defined and pkg.version %}: '{{ pkg.version }}' {% endif %}
  {%- endfor %}
    - watch_in:
      - service: collectd-service
{%- endif %}

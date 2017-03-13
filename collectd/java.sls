{% from "collectd/map.jinja" import collectd_settings with context %}

include:
  - collectd

collectd-java:
    file.rename:
        - name: {{ collectd_settings.javalib }}
        - source: {{ collectd_settings.javalib }}.new
        - force: False
        - makedirs: False

{% if collectd_settings.plugins.java.lib is defined and collectd_settings.plugins.java.lib %}
{{ collectd_settings.javalib }}:
    file.symlink:
        - target: {{ collectd_settings.plugins.java.lib }}
        - makedirs: False
{% endif %}

{{ collectd_settings.plugindirconfig }}/java.conf:
  file.managed:
    - source: salt://collectd/files/java.conf
    - user: {{ collectd_settings.user }}
    - group: {{ collectd_settings.group }}
    - mode: 644
    - template: jinja
    - watch_in:
      - service: collectd-service

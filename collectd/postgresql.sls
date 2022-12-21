{%- from "collectd/map.jinja" import collectd_settings with context %}
{%- set postgresql_settings = collectd_settings.get('plugins:postgresql') %}

include:
  - collectd
  - collectd.workaround-salt-ssh

# Install the required dependency package corresponding to the OS
collectd-postgresql-pkg-installed:
  pkg.installed:
    - name: {{ collectd_settings.plugin_postgresql.pkg }}

{{ collectd_settings.plugindirconfig }}/postgresql.conf:
  file.managed:
    - source: salt://collectd/files/postgresql.conf
    - user: {{ collectd_settings.user }}
    - group: {{ collectd_settings.group }}
    - mode: 644
    - template: jinja
    - watch_in:
      - service: collectd-service
    - require:
      - pkg: collectd-postgresql-pkg-installed
      - sls: collectd.workaround-salt-ssh

# -*- mode: salt; coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}

collectd-workaround-salt-ssh-map.jinja-file.cached:
  file.cached:
    - name: salt://{{ tplroot ~ "/map.jinja" }}


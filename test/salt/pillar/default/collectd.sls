# -*- coding: utf-8 -*-
# vim: ft=yaml
---
collectd:
  FQDNLookup: true
  plugins:
    postgresql:
      databases:
        - name: 'foo'
          host: 'hostname'
          port: '5432'
          user: 'username'
          pass: 'secret'
          sslmode: 'prefer'
          krbsrvname: 'kerberos_service_name'
          service: 'service_name'
          interval: '3600'
          queries:
            - 'magic'
        - name: 'bar'
          service: 'service_name'
          queries:
            - 'rt36_tickets'
            - 'backend'
      queries:
        - name: 'magic'
          statement: 'mystatement'
          param: 'hostname'
          results:
            - type: 'gauge'
              instanceprefix: 'magic'
              valuesfrom: 'count'
        - name: 'rt36_tickets'
          statement: 'mystatement'
          param: 'hostname'
          results:
            - type: 'counter'
              instanceprefix: 'rt36_tickets'
              instancesfrom: 'type'
              valuesfrom: 'count'

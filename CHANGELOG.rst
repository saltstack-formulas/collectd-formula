Collectd formula
================

1.1.x (unreleased)

- The creation of a symlink for `javalib` is optional and controlled by the parameter found in the pillar. If the `collected.plugins.java.lib` value is not present, the symlink is not created, thus avoiding a highstate failure. Resolves issue 26_.

.. _26: https://github.com/saltstack-formulas/collectd-formula/issues/26


1.1.0

Feature release:
* Add elasticsearch, ntpd and redis to available modules

0.0.6 (2014-08-18)

- Created collectd formula

0.0.5 (2014-07-28)

- Fixed broken link to Salt Formula documentation


0.0.4 (2014-02-26)

- Add CHANGELOG.rst


0.0.3 (2014-02-17)

- Add map.jinja
- Use map.jinja content in init.sls


0.0.2 (2014-02-16)

- Better README extension changed from .md to .rst
- Add link to Salt Formula documentation


0.0.1 (2013-11-03)

- Initial version

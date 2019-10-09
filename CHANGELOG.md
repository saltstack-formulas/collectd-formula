# Changelog

## [1.1.2](https://github.com/saltstack-formulas/collectd-formula/compare/v1.1.1...v1.1.2) (2019-10-09)


### Bug Fixes

* **map.jinja:** fix `salt-lint` errors ([](https://github.com/saltstack-formulas/collectd-formula/commit/29f03c5))
* **network.sls:** fix `salt-lint` errors ([](https://github.com/saltstack-formulas/collectd-formula/commit/bdd244b))


### Continuous Integration

* **kitchen:** change `log_level` to `debug` instead of `info` ([](https://github.com/saltstack-formulas/collectd-formula/commit/3d0009a))
* **kitchen:** install required packages to bootstrapped `opensuse` [skip ci] ([](https://github.com/saltstack-formulas/collectd-formula/commit/c1ae589))
* **kitchen:** use bootstrapped `opensuse` images until `2019.2.2` [skip ci] ([](https://github.com/saltstack-formulas/collectd-formula/commit/aed6fff))
* **kitchen+travis:** replace EOL pre-salted images ([](https://github.com/saltstack-formulas/collectd-formula/commit/9f67565))
* **platform:** add `arch-base-latest` (commented out for now) [skip ci] ([](https://github.com/saltstack-formulas/collectd-formula/commit/5923a2e))
* **yamllint:** add rule `empty-values` & use new `yaml-files` setting ([](https://github.com/saltstack-formulas/collectd-formula/commit/768a78e))
* merge travis matrix, add `salt-lint` & `rubocop` to `lint` job ([](https://github.com/saltstack-formulas/collectd-formula/commit/0e2bd15))
* use `dist: bionic` & apply `opensuse-leap-15` SCP error workaround ([](https://github.com/saltstack-formulas/collectd-formula/commit/505054d))

## [1.1.1](https://github.com/saltstack-formulas/collectd-formula/compare/v1.1.0...v1.1.1) (2019-08-23)


### Bug Fixes

* change iteritems to items to be Py3 compatible ([e7cc023](https://github.com/saltstack-formulas/collectd-formula/commit/e7cc023))

# [1.1.0](https://github.com/saltstack-formulas/collectd-formula/compare/v1.0.1...v1.1.0) (2019-08-10)


### Continuous Integration

* **kitchen+travis:** modify matrix to include `develop` platform ([793b952](https://github.com/saltstack-formulas/collectd-formula/commit/793b952))


### Features

* **yamllint:** include for this repo and apply rules throughout ([31883ff](https://github.com/saltstack-formulas/collectd-formula/commit/31883ff))

## [1.0.1](https://github.com/saltstack-formulas/collectd-formula/compare/v1.0.0...v1.0.1) (2019-04-24)


### Documentation

* **semantic-release:** implement an automated changelog ([54618f7](https://github.com/saltstack-formulas/collectd-formula/commit/54618f7))

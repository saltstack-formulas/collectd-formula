# Changelog

## [1.1.4](https://github.com/saltstack-formulas/collectd-formula/compare/v1.1.3...v1.1.4) (2020-12-16)


### Bug Fixes

* **release.config.js:** use full commit hash in commit link [skip ci] ([8b108b5](https://github.com/saltstack-formulas/collectd-formula/commit/8b108b5e8dd8de88a98d342493820bd04f5c4e84))


### Continuous Integration

* **gemfile:** restrict `train` gem version until upstream fix [skip ci] ([18b26ab](https://github.com/saltstack-formulas/collectd-formula/commit/18b26ab21d946703f4cf06b248a3468932293054))
* **gemfile.lock:** add to repo with updated `Gemfile` [skip ci] ([ab3add7](https://github.com/saltstack-formulas/collectd-formula/commit/ab3add7671fc7ce707eaaa3aa3ca1ef3d546140c))
* **gitlab-ci:** use GitLab CI as Travis CI replacement ([572e73c](https://github.com/saltstack-formulas/collectd-formula/commit/572e73c12142c0df85f1f6dcf9e6886f2bb5b468))
* **kitchen:** avoid using bootstrap for `master` instances [skip ci] ([bca1b99](https://github.com/saltstack-formulas/collectd-formula/commit/bca1b99c3371f00e81901ddc514db86fbeb60d46))
* **kitchen:** use `debian-10-master-py3` instead of `develop` [skip ci] ([7ed2701](https://github.com/saltstack-formulas/collectd-formula/commit/7ed27017c6c28c7b64540c86c3bab721825a03e6))
* **kitchen:** use `develop` image until `master` is ready (`amazonlinux`) [skip ci] ([c36843c](https://github.com/saltstack-formulas/collectd-formula/commit/c36843c1b4efec35646b0d08aaebc41c02a5ed38))
* **kitchen:** use `saltimages` Docker Hub where available [skip ci] ([071343b](https://github.com/saltstack-formulas/collectd-formula/commit/071343b57c752fb2f5f7026f55a4a70bafd9b36a))
* **kitchen+travis:** remove `master-py2-arch-base-latest` [skip ci] ([9814be5](https://github.com/saltstack-formulas/collectd-formula/commit/9814be5d2bc7c68adbd9967261bfab64425ac041))
* **kitchen+travis:** upgrade matrix after `2019.2.2` release [skip ci] ([a147c9d](https://github.com/saltstack-formulas/collectd-formula/commit/a147c9de11f40248134b41aed25938be9f6e0394))
* **pre-commit:** add to formula [skip ci] ([5f80569](https://github.com/saltstack-formulas/collectd-formula/commit/5f80569c71ee2ee543e57bf70c2557e59e005ca3))
* **pre-commit:** enable/disable `rstcheck` as relevant [skip ci] ([88ed018](https://github.com/saltstack-formulas/collectd-formula/commit/88ed018f99c1d185f8d642db8ffc6c4420cbbd42))
* **pre-commit:** finalise `rstcheck` configuration [skip ci] ([938b8ed](https://github.com/saltstack-formulas/collectd-formula/commit/938b8ed04fc21712470b7f756d99e9d1d27c2dea))
* **travis:** add notifications => zulip [skip ci] ([3558a40](https://github.com/saltstack-formulas/collectd-formula/commit/3558a403e96186f5e0df8a36f1c762c6f2b32a67))
* **travis:** apply changes from build config validation [skip ci] ([2cb2751](https://github.com/saltstack-formulas/collectd-formula/commit/2cb275198b7e5040db442e3173f54868cf44779f))
* **travis:** opt-in to `dpl v2` to complete build config validation [skip ci] ([17ccf35](https://github.com/saltstack-formulas/collectd-formula/commit/17ccf35c40e6f4039d3f320403832ee56c1f12fa))
* **travis:** quote pathspecs used with `git ls-files` [skip ci] ([2c9ef3e](https://github.com/saltstack-formulas/collectd-formula/commit/2c9ef3ebb351606d90e89419b3eb0a59658c07e3))
* **travis:** run `shellcheck` during lint job [skip ci] ([310c19f](https://github.com/saltstack-formulas/collectd-formula/commit/310c19fd41213496816db47af7c1c16257d5f938))
* **travis:** update `salt-lint` config for `v0.0.10` [skip ci] ([a351fd3](https://github.com/saltstack-formulas/collectd-formula/commit/a351fd3f32f12524cb6c6e318adcac5d71a1879a))
* **travis:** use `major.minor` for `semantic-release` version [skip ci] ([32b8c33](https://github.com/saltstack-formulas/collectd-formula/commit/32b8c3302c94f7755d5df8457f88308ea101feda))
* **travis:** use build config validation (beta) [skip ci] ([e55fc61](https://github.com/saltstack-formulas/collectd-formula/commit/e55fc616a255636b7e9531d4fc2e87ec7af599b7))
* **workflows/commitlint:** add to repo [skip ci] ([c71e7b3](https://github.com/saltstack-formulas/collectd-formula/commit/c71e7b364d979be8ef4734441b372d0e9b2dd9fd))


### Documentation

* **contributing:** remove to use org-level file instead [skip ci] ([3ce31da](https://github.com/saltstack-formulas/collectd-formula/commit/3ce31da191632c63686db4d8ee2e669e672b10aa))
* **readme:** update link to `CONTRIBUTING` [skip ci] ([f23ed24](https://github.com/saltstack-formulas/collectd-formula/commit/f23ed2431d69d1049ee9527f8511bd0d9f6f2c1d))


### Performance Improvements

* **travis:** improve `salt-lint` invocation [skip ci] ([c583ff4](https://github.com/saltstack-formulas/collectd-formula/commit/c583ff47c48a1daa330393867f56f51dfe084205))

## [1.1.3](https://github.com/saltstack-formulas/collectd-formula/compare/v1.1.2...v1.1.3) (2019-10-11)


### Bug Fixes

* **rubocop:** add fixes using `rubocop --safe-auto-correct` ([](https://github.com/saltstack-formulas/collectd-formula/commit/9eba083))


### Continuous Integration

* merge travis matrix, add `salt-lint` & `rubocop` to `lint` job ([](https://github.com/saltstack-formulas/collectd-formula/commit/f8e5542))
* **travis:** merge `rubocop` linter into main `lint` job ([](https://github.com/saltstack-formulas/collectd-formula/commit/a95ec51))

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

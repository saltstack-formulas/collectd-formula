
Changelog
=========

`1.2.0 <https://github.com/saltstack-formulas/collectd-formula/compare/v1.1.4...v1.2.0>`_ (2022-05-24)
----------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **pre-commit:** run end-of-file-fixer & trailing-whitespace [skip ci] (\ `31fa9fe <https://github.com/saltstack-formulas/collectd-formula/commit/31fa9fe67adfc1353ef949f1fa2513256723729b>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen+gitlab:** update for new pre-salted images [skip ci] (\ `58d674a <https://github.com/saltstack-formulas/collectd-formula/commit/58d674a6eb8053edfb3df462d4e364599d6f6b27>`_\ )
* update linters to latest versions [skip ci] (\ `8a38847 <https://github.com/saltstack-formulas/collectd-formula/commit/8a38847c19019dd7c6b0e217c6cc45b01d402647>`_\ )
* **3003.1:** update inc. AlmaLinux, Rocky & ``rst-lint`` [skip ci] (\ `8faa695 <https://github.com/saltstack-formulas/collectd-formula/commit/8faa6950d68c3e13bd163f464972eb58efa84cd7>`_\ )
* **commitlint:** ensure ``upstream/master`` uses main repo URL [skip ci] (\ `5a197ba <https://github.com/saltstack-formulas/collectd-formula/commit/5a197ba2e7705c146999511d269d50d4b537123c>`_\ )
* **gemfile:** allow rubygems proxy to be provided as an env var [skip ci] (\ `aaede7c <https://github.com/saltstack-formulas/collectd-formula/commit/aaede7cfebbcde05ba9d6b6bb1d2b658f7b6a1a7>`_\ )
* **gemfile+lock:** use ``ssf`` customised ``inspec`` repo [skip ci] (\ `046e462 <https://github.com/saltstack-formulas/collectd-formula/commit/046e462ad3369cef39b58e04c8f8540240b77627>`_\ )
* **gemfile+lock:** use ``ssf`` customised ``kitchen-docker`` repo [skip ci] (\ `eb78490 <https://github.com/saltstack-formulas/collectd-formula/commit/eb78490abf1f5d41b789cd7c78a58114b7bf159b>`_\ )
* **gitlab-ci:** add ``rubocop`` linter (with ``allow_failure``\ ) [skip ci] (\ `0779ef2 <https://github.com/saltstack-formulas/collectd-formula/commit/0779ef284723b52f8d3ecc613fdec4fa8511bbe5>`_\ )
* **kitchen:** move ``provisioner`` block & update ``run_command`` [skip ci] (\ `21c60b6 <https://github.com/saltstack-formulas/collectd-formula/commit/21c60b6154597d8b35920ad1c54790fde984b8aa>`_\ )
* **kitchen+ci:** update with ``3004`` pre-salted images/boxes [skip ci] (\ `d1de343 <https://github.com/saltstack-formulas/collectd-formula/commit/d1de3430bb3292826fcd1f6971f7ee8b2a36a5dc>`_\ )
* **kitchen+ci:** update with latest ``3003.2`` pre-salted images [skip ci] (\ `1cdfb69 <https://github.com/saltstack-formulas/collectd-formula/commit/1cdfb695812b9290cbdef2ac82e0dbaba39fc9f2>`_\ )
* **kitchen+ci:** update with latest CVE pre-salted images [skip ci] (\ `103319f <https://github.com/saltstack-formulas/collectd-formula/commit/103319f9e2119826de0638b1d5d577977ef43f06>`_\ )
* **kitchen+ci:** use latest pre-salted images (after CVE) [skip ci] (\ `b248172 <https://github.com/saltstack-formulas/collectd-formula/commit/b2481722ac58aa4c3547b3663000aa65ac5061e3>`_\ )
* **kitchen+gitlab:** update for new pre-salted images [skip ci] (\ `68eb22b <https://github.com/saltstack-formulas/collectd-formula/commit/68eb22b5605ea35bcdb9f85a8f8f19dee8b1cce4>`_\ )
* add Debian 11 Bullseye & update ``yamllint`` configuration [skip ci] (\ `7ff9ab3 <https://github.com/saltstack-formulas/collectd-formula/commit/7ff9ab373186293be38bbbc92f8722e32d7f479f>`_\ )
* **kitchen+gitlab:** remove Ubuntu 16.04 & Fedora 32 (EOL) [skip ci] (\ `981d59f <https://github.com/saltstack-formulas/collectd-formula/commit/981d59f3a77537d55624d1701fa27673becc4bd1>`_\ )
* add ``arch-master`` to matrix and update ``.travis.yml`` [skip ci] (\ `fc87b11 <https://github.com/saltstack-formulas/collectd-formula/commit/fc87b114c44b9f1f71610e3d7608fd3597d3ca7c>`_\ )
* **kitchen+gitlab:** adjust matrix to add ``3003`` [skip ci] (\ `3033960 <https://github.com/saltstack-formulas/collectd-formula/commit/3033960b701910863570da7921fe1ae7814d528b>`_\ )
* **kitchen+gitlab-ci:** use latest pre-salted images [skip ci] (\ `f3947ed <https://github.com/saltstack-formulas/collectd-formula/commit/f3947edc74b22802b27b8948c1b2a7b8deea742e>`_\ )
* **pre-commit:** update hook for ``rubocop`` [skip ci] (\ `ce9ad2d <https://github.com/saltstack-formulas/collectd-formula/commit/ce9ad2d34e8e2045a77418a3bc01a4af28f7f082>`_\ )

Documentation
^^^^^^^^^^^^^


* **readme:** fix ``rstcheck`` violation [skip ci] (\ `90f356c <https://github.com/saltstack-formulas/collectd-formula/commit/90f356c34e2ac61bc7282bbfbc7c34ef59fde857>`_\ )
* **readme:** fix ``rstcheck`` violations [skip ci] (\ `6e42eec <https://github.com/saltstack-formulas/collectd-formula/commit/6e42eece74b0e115eb3e110a37d281f2478088c9>`_\ )
* **readme:** fix headings [skip ci] (\ `637557a <https://github.com/saltstack-formulas/collectd-formula/commit/637557af5a65cf0bc03849b3aefe22060c6eb8a5>`_\ )

Features
^^^^^^^^


* **collectd:** add missing parameters for PostgreSQL plugin (\ `82d7104 <https://github.com/saltstack-formulas/collectd-formula/commit/82d71045e753bd18586b4a8e60a4750444874ba7>`_\ )

Tests
^^^^^


* **alma+rocky:** add platforms (based on CentOS 8) [skip ci] (\ `961ab46 <https://github.com/saltstack-formulas/collectd-formula/commit/961ab466f89f199ff720daa58d69ac63e3aa84d8>`_\ )
* **install+config:** fix for Oracle Linux (\ `703ada2 <https://github.com/saltstack-formulas/collectd-formula/commit/703ada2b046c4208da8bd3895cf8331a02e4eead>`_\ )
* **system:** add ``build_platform_codename`` [skip ci] (\ `052f212 <https://github.com/saltstack-formulas/collectd-formula/commit/052f21275c86eb7df52645328695b306255bedce>`_\ )
* **system.rb:** add support for ``mac_os_x`` [skip ci] (\ `6061cc3 <https://github.com/saltstack-formulas/collectd-formula/commit/6061cc3b9b2d0b344bce1170ee8ccb04c2d265f2>`_\ )
* standardise use of ``share`` suite & ``_mapdata`` state [skip ci] (\ `f461b84 <https://github.com/saltstack-formulas/collectd-formula/commit/f461b84ce748224850a66ee1179fe49ab791ae2d>`_\ )

`1.1.4 <https://github.com/saltstack-formulas/collectd-formula/compare/v1.1.3...v1.1.4>`_ (2020-12-16)
----------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **release.config.js:** use full commit hash in commit link [skip ci] (\ `8b108b5 <https://github.com/saltstack-formulas/collectd-formula/commit/8b108b5e8dd8de88a98d342493820bd04f5c4e84>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **gemfile:** restrict ``train`` gem version until upstream fix [skip ci] (\ `18b26ab <https://github.com/saltstack-formulas/collectd-formula/commit/18b26ab21d946703f4cf06b248a3468932293054>`_\ )
* **gemfile.lock:** add to repo with updated ``Gemfile`` [skip ci] (\ `ab3add7 <https://github.com/saltstack-formulas/collectd-formula/commit/ab3add7671fc7ce707eaaa3aa3ca1ef3d546140c>`_\ )
* **gitlab-ci:** use GitLab CI as Travis CI replacement (\ `572e73c <https://github.com/saltstack-formulas/collectd-formula/commit/572e73c12142c0df85f1f6dcf9e6886f2bb5b468>`_\ )
* **kitchen:** avoid using bootstrap for ``master`` instances [skip ci] (\ `bca1b99 <https://github.com/saltstack-formulas/collectd-formula/commit/bca1b99c3371f00e81901ddc514db86fbeb60d46>`_\ )
* **kitchen:** use ``debian-10-master-py3`` instead of ``develop`` [skip ci] (\ `7ed2701 <https://github.com/saltstack-formulas/collectd-formula/commit/7ed27017c6c28c7b64540c86c3bab721825a03e6>`_\ )
* **kitchen:** use ``develop`` image until ``master`` is ready (\ ``amazonlinux``\ ) [skip ci] (\ `c36843c <https://github.com/saltstack-formulas/collectd-formula/commit/c36843c1b4efec35646b0d08aaebc41c02a5ed38>`_\ )
* **kitchen:** use ``saltimages`` Docker Hub where available [skip ci] (\ `071343b <https://github.com/saltstack-formulas/collectd-formula/commit/071343b57c752fb2f5f7026f55a4a70bafd9b36a>`_\ )
* **kitchen+travis:** remove ``master-py2-arch-base-latest`` [skip ci] (\ `9814be5 <https://github.com/saltstack-formulas/collectd-formula/commit/9814be5d2bc7c68adbd9967261bfab64425ac041>`_\ )
* **kitchen+travis:** upgrade matrix after ``2019.2.2`` release [skip ci] (\ `a147c9d <https://github.com/saltstack-formulas/collectd-formula/commit/a147c9de11f40248134b41aed25938be9f6e0394>`_\ )
* **pre-commit:** add to formula [skip ci] (\ `5f80569 <https://github.com/saltstack-formulas/collectd-formula/commit/5f80569c71ee2ee543e57bf70c2557e59e005ca3>`_\ )
* **pre-commit:** enable/disable ``rstcheck`` as relevant [skip ci] (\ `88ed018 <https://github.com/saltstack-formulas/collectd-formula/commit/88ed018f99c1d185f8d642db8ffc6c4420cbbd42>`_\ )
* **pre-commit:** finalise ``rstcheck`` configuration [skip ci] (\ `938b8ed <https://github.com/saltstack-formulas/collectd-formula/commit/938b8ed04fc21712470b7f756d99e9d1d27c2dea>`_\ )
* **travis:** add notifications => zulip [skip ci] (\ `3558a40 <https://github.com/saltstack-formulas/collectd-formula/commit/3558a403e96186f5e0df8a36f1c762c6f2b32a67>`_\ )
* **travis:** apply changes from build config validation [skip ci] (\ `2cb2751 <https://github.com/saltstack-formulas/collectd-formula/commit/2cb275198b7e5040db442e3173f54868cf44779f>`_\ )
* **travis:** opt-in to ``dpl v2`` to complete build config validation [skip ci] (\ `17ccf35 <https://github.com/saltstack-formulas/collectd-formula/commit/17ccf35c40e6f4039d3f320403832ee56c1f12fa>`_\ )
* **travis:** quote pathspecs used with ``git ls-files`` [skip ci] (\ `2c9ef3e <https://github.com/saltstack-formulas/collectd-formula/commit/2c9ef3ebb351606d90e89419b3eb0a59658c07e3>`_\ )
* **travis:** run ``shellcheck`` during lint job [skip ci] (\ `310c19f <https://github.com/saltstack-formulas/collectd-formula/commit/310c19fd41213496816db47af7c1c16257d5f938>`_\ )
* **travis:** update ``salt-lint`` config for ``v0.0.10`` [skip ci] (\ `a351fd3 <https://github.com/saltstack-formulas/collectd-formula/commit/a351fd3f32f12524cb6c6e318adcac5d71a1879a>`_\ )
* **travis:** use ``major.minor`` for ``semantic-release`` version [skip ci] (\ `32b8c33 <https://github.com/saltstack-formulas/collectd-formula/commit/32b8c3302c94f7755d5df8457f88308ea101feda>`_\ )
* **travis:** use build config validation (beta) [skip ci] (\ `e55fc61 <https://github.com/saltstack-formulas/collectd-formula/commit/e55fc616a255636b7e9531d4fc2e87ec7af599b7>`_\ )
* **workflows/commitlint:** add to repo [skip ci] (\ `c71e7b3 <https://github.com/saltstack-formulas/collectd-formula/commit/c71e7b364d979be8ef4734441b372d0e9b2dd9fd>`_\ )

Documentation
^^^^^^^^^^^^^


* **contributing:** remove to use org-level file instead [skip ci] (\ `3ce31da <https://github.com/saltstack-formulas/collectd-formula/commit/3ce31da191632c63686db4d8ee2e669e672b10aa>`_\ )
* **readme:** update link to ``CONTRIBUTING`` [skip ci] (\ `f23ed24 <https://github.com/saltstack-formulas/collectd-formula/commit/f23ed2431d69d1049ee9527f8511bd0d9f6f2c1d>`_\ )

Performance Improvements
^^^^^^^^^^^^^^^^^^^^^^^^


* **travis:** improve ``salt-lint`` invocation [skip ci] (\ `c583ff4 <https://github.com/saltstack-formulas/collectd-formula/commit/c583ff47c48a1daa330393867f56f51dfe084205>`_\ )

`1.1.3 <https://github.com/saltstack-formulas/collectd-formula/compare/v1.1.2...v1.1.3>`_ (2019-10-11)
----------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **rubocop:** add fixes using ``rubocop --safe-auto-correct`` (\ ` <https://github.com/saltstack-formulas/collectd-formula/commit/9eba083>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* merge travis matrix, add ``salt-lint`` & ``rubocop`` to ``lint`` job (\ ` <https://github.com/saltstack-formulas/collectd-formula/commit/f8e5542>`_\ )
* **travis:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/saltstack-formulas/collectd-formula/commit/a95ec51>`_\ )

`1.1.2 <https://github.com/saltstack-formulas/collectd-formula/compare/v1.1.1...v1.1.2>`_ (2019-10-09)
----------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **map.jinja:** fix ``salt-lint`` errors (\ ` <https://github.com/saltstack-formulas/collectd-formula/commit/29f03c5>`_\ )
* **network.sls:** fix ``salt-lint`` errors (\ ` <https://github.com/saltstack-formulas/collectd-formula/commit/bdd244b>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen:** change ``log_level`` to ``debug`` instead of ``info`` (\ ` <https://github.com/saltstack-formulas/collectd-formula/commit/3d0009a>`_\ )
* **kitchen:** install required packages to bootstrapped ``opensuse`` [skip ci] (\ ` <https://github.com/saltstack-formulas/collectd-formula/commit/c1ae589>`_\ )
* **kitchen:** use bootstrapped ``opensuse`` images until ``2019.2.2`` [skip ci] (\ ` <https://github.com/saltstack-formulas/collectd-formula/commit/aed6fff>`_\ )
* **kitchen+travis:** replace EOL pre-salted images (\ ` <https://github.com/saltstack-formulas/collectd-formula/commit/9f67565>`_\ )
* **platform:** add ``arch-base-latest`` (commented out for now) [skip ci] (\ ` <https://github.com/saltstack-formulas/collectd-formula/commit/5923a2e>`_\ )
* **yamllint:** add rule ``empty-values`` & use new ``yaml-files`` setting (\ ` <https://github.com/saltstack-formulas/collectd-formula/commit/768a78e>`_\ )
* merge travis matrix, add ``salt-lint`` & ``rubocop`` to ``lint`` job (\ ` <https://github.com/saltstack-formulas/collectd-formula/commit/0e2bd15>`_\ )
* use ``dist: bionic`` & apply ``opensuse-leap-15`` SCP error workaround (\ ` <https://github.com/saltstack-formulas/collectd-formula/commit/505054d>`_\ )

`1.1.1 <https://github.com/saltstack-formulas/collectd-formula/compare/v1.1.0...v1.1.1>`_ (2019-08-23)
----------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* change iteritems to items to be Py3 compatible (\ `e7cc023 <https://github.com/saltstack-formulas/collectd-formula/commit/e7cc023>`_\ )

`1.1.0 <https://github.com/saltstack-formulas/collectd-formula/compare/v1.0.1...v1.1.0>`_ (2019-08-10)
----------------------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen+travis:** modify matrix to include ``develop`` platform (\ `793b952 <https://github.com/saltstack-formulas/collectd-formula/commit/793b952>`_\ )

Features
^^^^^^^^


* **yamllint:** include for this repo and apply rules throughout (\ `31883ff <https://github.com/saltstack-formulas/collectd-formula/commit/31883ff>`_\ )

`1.0.1 <https://github.com/saltstack-formulas/collectd-formula/compare/v1.0.0...v1.0.1>`_ (2019-04-24)
----------------------------------------------------------------------------------------------------------

Documentation
^^^^^^^^^^^^^


* **semantic-release:** implement an automated changelog (\ `54618f7 <https://github.com/saltstack-formulas/collectd-formula/commit/54618f7>`_\ )

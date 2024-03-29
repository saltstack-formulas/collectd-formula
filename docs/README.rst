collectd-formula
================

|img_travis| |docs| |img_sr|

.. |img_travis| image:: https://travis-ci.com/saltstack-formulas/collectd-formula.svg?branch=master
   :alt: Travis CI Build Status
   :scale: 100%
   :target: https://travis-ci.com/saltstack-formulas/collectd-formula
.. |docs| image:: https://readthedocs.org/projects/docs/badge/?version=latest
   :alt: Documentation Status
   :scale: 100%
   :target: https://collectd-formula.readthedocs.io/en/latest/?badge=latest
.. |img_sr| image:: https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg
   :alt: Semantic Release
   :scale: 100%
   :target: https://github.com/semantic-release/semantic-release

A SaltStack formula that installs and configures collectd. The system statistics collection daemon.
start on a new formula and it serves as a style guide.

.. contents:: **Table of Contents**

General notes
-------------

See the full `SaltStack Formulas installation and usage instructions
<https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

If you are interested in writing or contributing to formulas, please pay attention to the `Writing Formula Section
<https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html#writing-formulas>`_.

If you want to use this formula, please pay attention to the ``FORMULA`` file and/or ``git tag``,
which contains the currently released version. This formula is versioned according to `Semantic Versioning <http://semver.org/>`_.

See `Formula Versioning Section <https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html#versioning>`_ for more details.

Contributing to this repo
-------------------------

**Commit message formatting is significant!!**

Please see `How to contribute <https://github.com/saltstack-formulas/.github/blob/master/CONTRIBUTING.rst>`_ for more details.

Available states
----------------

.. contents::
   :local:

``collectd``
------------

*Meta-state (This is a state that includes other states)*.

Installs the collectd package, and starts the associated collectd service.

``collectd.service``
^^^^^^^^^^^^^^^^^^^^

Metastate used to include service into respective plugin states, included in ``collectd`` state.

``collectd.apache``
^^^^^^^^^^^^^^^^^^^

Enables and configures the `apache plugin <https://collectd.org/wiki/index.php/Plugin:Apache>`_.
All common parameters are supported, so pass something like ::

    apache:
      instances:
        - name: 'human-readable-name'
          url: 'http://localhost/server-status?auto'
          user: 'user'
          pass: 'your-password'

Only ``name`` and ``url`` are required.

``collectd.bind``
^^^^^^^^^^^^^^^^^

Enables and configures the bind plugin.

``collectd.dbi``
^^^^^^^^^^^^^^^^

Enables and configures the dbi plugin. It's used for quering databases with libdbi.
Refer to `collectd.conf(5) <https://collectd.org/documentation/manpages/collectd.conf.5.shtml#plugin_dbi>`_ manpage for details
and ``pillar.example`` to see how values should be populated.

Beware this plugin may need additional packages installed on your system to run properly.

``collectd.csv``
^^^^^^^^^^^^^^^^

Enables and configures the csv write plugin.

``collectd.df``
^^^^^^^^^^^^^^^

Enables and configures the df plugin.

``collectd.disk``
^^^^^^^^^^^^^^^^^

Enables and configures the disk plugin.

``collectd.elasticsearch``
^^^^^^^^^^^^^^^^^^^^^^^^^^

Enables and configures the `elasticsearch plugin <https://github.com/ministryofjustice/elasticsearch-collectd-plugin>`_

``collectd.ethstat``
^^^^^^^^^^^^^^^^^^^^

Enables and configures the ethstat plugin (please note `there is a possible bug in the debian package <https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=698584>`_).

``collectd.interface``
^^^^^^^^^^^^^^^^^^^^^^

Enables and configures the interface plugin.

``collectd.java``
^^^^^^^^^^^^^^^^^

Enables and configures the java plugin. If enabled it will also collect tomcat catalina metrics.

Requires the installation of JDK.

Pillar values used under `collectd.plugins.java`, an example ::


    collectd:
      plugins:
        java:
          host: localhost
          port: 39999
          user: 'someuser' (optional)
          group: 'someuser' (optional)
          lib: '/some/file' (optional)
          tomcat: true (optional)


``collectd.logfile``
^^^^^^^^^^^^^^^^^^^^

Enables and configures the logfile plugin.

``collectd.modules``
^^^^^^^^^^^^^^^^^^^^

This state helps distributing collectd external modules written in various languages
(see `python <https://collectd.org/wiki/index.php/Plugin:Python>`_ or
`perl <https://collectd.org/wiki/index.php/Plugin:Perl>`_ for example).

Sample usage:

* Include ``collectd.modules`` in your topfile.
* Create collectd/modules/files folder in your states.
* Put modules you need in that folder.
* Modules will be put in ``collectd.moduledirconfig`` folder.


``collectd.mysql``
^^^^^^^^^^^^^^^^^^

Enables and configures the mysql plugin. Needs refinement.

``collectd.network``
^^^^^^^^^^^^^^^^^^^^

Enables and configures the network plugin.

``collectd.ntpd``
^^^^^^^^^^^^^^^^^

Enables and configures the ntpd plugin.

``collectd.packages``
^^^^^^^^^^^^^^^^^^^^^

This state is used to install OS packages collectd plugins depend on.

``collectd.postgresql``
^^^^^^^^^^^^^^^^^^^^^^^

Enables and configures the postgresql plugin. Needs refinement.

``collectd.processes``
^^^^^^^^^^^^^^^^^^^^^^

Enables and configures the processes plugin

``collectd.protocols``
^^^^^^^^^^^^^^^^^^^^^^

Enables and configures the protocols plugin

``collectd.powerdns``
^^^^^^^^^^^^^^^^^^^^^

Enables and configures the powerdns plugin.

``collectd.rabbitmq``
^^^^^^^^^^^^^^^^^^^^^

Enables and configures the rabbitmq plugin.

``collectd.redis``
^^^^^^^^^^^^^^^^^^

Enables and configures the redis plugin.

``collectd.syslog``
^^^^^^^^^^^^^^^^^^^

Enables and configures the syslog plugin.

``collectd.tail``
^^^^^^^^^^^^^^^^^

Enables and configures the tail plugin.

``collectd.tcpconns``
^^^^^^^^^^^^^^^^^^^^^

Enables and configures the tcpconns plugin.

``collectd.types``
^^^^^^^^^^^^^^^^^^

Manages a TypesDB file stored at `plugindirconfig`/types.db.

``collectd.curl_json``
^^^^^^^^^^^^^^^^^^^^^^

Enables and configures the curl_json plugin.

``collectd.curl_xml``
^^^^^^^^^^^^^^^^^^^^^

Enables and configures the curl_xml plugin.

``collectd.python``
^^^^^^^^^^^^^^^^^^^

Enables and configures the python plugin, which allows executiong arbitrary python scripts.

``collectd.vmem``
^^^^^^^^^^^^^^^^^

Enables and configures the vmem plugin.

``collectd.librato``
^^^^^^^^^^^^^^^^^^^^

Enables and configures write_http plugin for reporting to Librato

``collectd.zookeeper``
^^^^^^^^^^^^^^^^^^^^^^

Enables and configures the zookeeper plugin.

``collectd.unixsock``
^^^^^^^^^^^^^^^^^^^^^

Enables and configures the unixsock plugin.

Usage
-----

Custom state file
^^^^^^^^^^^^^^^^^

Create a custom state file (for example ``collectd-custom.sls``) that includes the plugins you want and the base state. ::

    include:
      - collectd
      - collectd.disk
      - collectd.syslog

Then in your topfile: ::

    'servername':
      - collectd-custom

Directly in topfile
^^^^^^^^^^^^^^^^^^^

Or if you don't mind having long lists in your topfile, just add whatever plugins you want and the base state. ::

    'servername':
      - collectd
      - collectd.disk
      - collectd.syslog

Combined
^^^^^^^^

Or you can combine both - default plugins in custom state and specific in topfile. ::

    'apache-server':
      - collectd-custom
      - collectd.apache

================
collectd-formula
================

A salt formula that installs and configures collectd. The system statistics collection daemon.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``collectd``
------------

Installs the collectd package, and starts the associated collectd service.

``collectd.service``
--------------------

Metastate used to include service into respective plugin states, included in ``collectd`` state.

``collectd.apache``
-------------------

Enables and configures the [apache](https://collectd.org/wiki/index.php/Plugin:Apache) plugin.
All common parameters are supported, so pass something like ::

    apache:
      instances:
        - name: 'human-readable-name'
          url: 'http://localhost/server-status?auto'
          user: 'user'
          pass: 'your-password'

Only ``name`` and ``url`` are required.

``collectd.dbi``
----------------

Enables and configures the dbi plugin. It's used for quering databases with libdbi.
Refer to `collectd.conf(5) <https://collectd.org/documentation/manpages/collectd.conf.5.shtml#plugin_dbi>`_ manpage for details
and ``pillar.example`` to see how values should be populated.

Beware this plugin may need additional packages installed on your system to run properly.

``collectd.df``
---------------

Enables and configures the df plugin.

``collectd.disk``
-----------------

Enables and configures the disk plugin.

``collectd.elasticsearch``
--------------------------

Enables and configures the `elasticsearch plugin <https://github.com/ministryofjustice/elasticsearch-collectd-plugin>`_

``collectd.ethstat``
--------------------

Enables and configures the ethstat plugin (please note `there is a possible bug in the debian package <https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=698584>`_).

``collectd.interface``
----------------------

Enables and configures the interface plugin.

``collectd.java``
-----------------

Enables and configures the java plugin.

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



``collectd.modules``
--------------------

This state helps distributing collectd external modules written in various languages
(see [python](https://collectd.org/wiki/index.php/Plugin:Python) or
[perl](https://collectd.org/wiki/index.php/Plugin:Perl) for example).

Sample usage:

* Include ``collectd.modules`` in your topfile.
* Create collectd/modules/files folder in your states.
* Put modules you need in that folder.
* Modules will be put in ``collectd.moduledirconfig`` folder.


``collectd.mysql``
------------------

Enables and configures the mysql plugin. Needs refinement.

``collectd.network``
--------------------

Enables and configures the network plugin.

``collectd.ntpd``
-----------------

Enables and configures the ntpd plugin.

``collectd.packages``
---------------------

This state is used to install OS packages collectd plugins depend on.

``collectd.postgresql``
-----------------------

Enables and configures the postgresql plugin. Needs refinement.

``collectd.processes``
----------------------

Enables and configures the processes plugin

``collectd.powerdns``
-----------------------

Enables and configures the powerdns plugin.

``collectd.syslog``
-------------------

Enables and configures the syslog plugin.

``collectd.tail``
-------------------

Enables and configures the tail plugin.

``collectd.curl_json``
-------------------

Enables and configures the curl_json plugin.

``collectd.python``
-------------------

Enables and configures the python plugin, which allows executiong arbitrary python scripts.

``collectd.vmem``
-------------------

Enables and configures the vmem plugin.

``collectd.librato``
------------

Enables and configures write_http plugin for reporting to Librato

Usage
=====

Custom state file
-----------------

Create a custom state file (for example ``collectd-custom.sls``) that includes the plugins you want and the base state. ::

    include:
      - collectd
      - collectd.disk
      - collectd.syslog

Then in your topfile: ::

    'servername':
      - collectd-custom

Directly in topfile
-------------------

Or if you don't mind having long lists in your topfile, just add whatever plugins you want and the base state. ::

    'servername':
      - collectd
      - collectd.disk
      - collectd.syslog

Combined
--------

Or you can combine both - default plugins in custom state and specific in topfile. ::

    'apache-server':
      - collectd-custom
      - collectd.apache

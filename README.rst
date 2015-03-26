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
------------

Metastate used to include service into respective plugin states, included in ``collectd`` state.

``collectd.apache``
------------

Enables and configures the apache plugin.

``collectd.df``
------------

Enables and configures the df plugin.

``collectd.disk``
------------

Enables and configures the disk plugin.

``collectd.ethstat``
------------

Enables and configures the ethstat plugin (please note `there is a possible bug in the debian package <https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=698584>`_).

``collectd.interface``
------------

Enables and configures the interface plugin.

``collectd.java``
------------

Enables and configures the java plugin.

``collectd.mysql``
------------

Enables and configures the mysql plugin. Needs refinement.

``collectd.network``
------------

Enables and configures the network plugin.

``collectd.ntpd``
------------

Enables and configures the ntpd plugin.

``collectd.postgresql``
------------

Enables and configures the postgresql plugin. Needs refinement.

``collectd.syslog``
------------

Enables and configures the syslog plugin.

``collectd.write_graphite``
------------

Enables and configures the write_graphite plugin.

Usage
================

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

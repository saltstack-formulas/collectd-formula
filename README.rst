================
collectd-formula
================

A salt formula that installs and configures collectd. The system statistics collection daemon.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Contents
========

.. contents::
    :local:
 
Usage
-----

Custom state file
~~~~~~~~~~~~~~~~~

Create a custom state file (for example ``collectd-custom.sls``) that includes the plugins you want and the base state. ::

    include:
      - collectd
      - collectd.disk
      - collectd.syslog

Then in your topfile: ::

    'servername':
      - collectd-custom

Directly in topfile
~~~~~~~~~~~~~~~~~~~

Or if you don't mind having long lists in your topfile, just add whatever plugins you want and the base state. ::

    'servername':
      - collectd
      - collectd.disk
      - collectd.syslog

Combined
~~~~~~~~

Or you can combine both - default plugins in custom state and specific in topfile. ::

    'apache-server':
      - collectd-custom
      - collectd.apache
 
Adding a New Plugin
-------------------

1) Create the plugin SLS file

collectd/<plugin_name>.sls:

.. code:: yaml

   {% from "collectd/map.jinja" import collectd_settings with context %}
   {{ set plugin_name = "my_plugin" }}

   include:
     - collectd
     # This line is needed if the plugin is python based
     # - collectd.python # if plugin is a python based module
   
   collectd-{{ plugin_name }}-module:
     pip.installed:
     - name: <plugin_name or repository>
     - require_in:
       - service: collectd
     - watch_in:
       - service: collectd
   
   
   {{ collectd_settings.plugindirconfig }}/{{ plugin_name }}.conf:
     file.managed:
       - source: salt://collectd/files/{{ plugin_name }}.conf
       - user: {{ collectd_settings.user }}
       - group: {{ collectd_settings.group }}
       - mode: 644
       - template: jinja
       - watch_in:
         - service: collectd-service
 
The above example will work for pip installable plugins, 
but we can also add plugins code locally to collectd/modules/files. 

2) Create the plugin configuration file

collectd/files/<plugin_name>.conf:

.. code:: xml

   {%- from "collectd/map.jinja" import collectd_settings with context %}
   
   {{ set plugin_name = "my_plugin" }}
   
   # These 3 lines are needed if the plugin is python based
   #<LoadPlugin "python">
   #    Globals true
   #</LoadPlugin>
   
   <Plugin "{{ plugin_name }}">
       ModulePath "{{ collectd_settings.moduledirconfig }}"
   
       # This line is needed if the plugin is python based
       # Import "{{ plugin_name }}"
   
       <Module "{{ plugin_name }}">
           # ... configuration settings for the plugin
       </Module>
   </Plugin>


3) Add plugin defaults to colllectd/map.jinja 

.. code:: yaml

   {% set default_settings = {
      'collectd': {
         ...
            'plugins': {
               '<plugin_name>': {
                  # Plugin settings defaults go here
               }
            }
       }
   %}

The plugin is now accessible to projects as ``collectd.<plugin_name>``
 

Available states
----------------


``collectd``
~~~~~~~~~~~~

Installs the collectd package, and starts the associated collectd service.

``collectd.service``
~~~~~~~~~~~~~~~~~~~~

Metastate used to include service into respective plugin states, included in ``collectd`` state.

``collectd.apache``
~~~~~~~~~~~~~~~~~~~

Enables and configures the [apache](https://collectd.org/wiki/index.php/Plugin:Apache) plugin.
All common parameters are supported, so pass something like ::

    apache:
      instances:
        ~ name: 'human~readable~name'
          url: 'http://localhost/server~status?auto'
          user: 'user'
          pass: 'your~password'

Only ``name`` and ``url`` are required.

``collectd.dbi``
~~~~~~~~~~~~~~~~

Enables and configures the dbi plugin. It's used for quering databases with libdbi.
Refer to `collectd.conf(5) <https://collectd.org/documentation/manpages/collectd.conf.5.shtml#plugin_dbi>`_ manpage for details
and ``pillar.example`` to see how values should be populated.

Beware this plugin may need additional packages installed on your system to run properly.

``collectd.df``
~~~~~~~~~~~~~~~

Enables and configures the df plugin.

``collectd.disk``
~~~~~~~~~~~~~~~~~

Enables and configures the disk plugin.

``collectd.elasticsearch``
--------------------------

Enables and configures the `elasticsearch plugin <https://github.com/ministryofjustice/elasticsearch-collectd-plugin>`_

``collectd.ethstat``
~~~~~~~~~~~~~~~~~~~~

Enables and configures the ethstat plugin (please note `there is a possible bug in the debian package <https://bugs.debian.org/cgi~bin/bugreport.cgi?bug=698584>`_).

``collectd.interface``
~~~~~~~~~~~~~~~~~~~~~~

Enables and configures the interface plugin.

``collectd.java``
~~~~~~~~~~~~~~~~~

Enables and configures the java plugin.

``collectd.modules``
~~~~~~~~~~~~~~~~~~~~

This state helps distributing collectd external modules written in various languages
(see [python](https://collectd.org/wiki/index.php/Plugin:Python) or
[perl](https://collectd.org/wiki/index.php/Plugin:Perl) for example).

Sample usage:

* Include ``collectd.modules`` in your topfile.
* Create collectd/modules/files folder in your states.
* Put modules you need in that folder.
* Modules will be put in ``collectd.moduledirconfig`` folder.


``collectd.mysql``
~~~~~~~~~~~~~~~~~~

Enables and configures the mysql plugin. Needs refinement.

``collectd.network``
~~~~~~~~~~~~~~~~~~~~

Enables and configures the network plugin.

``collectd.ntpd``
~~~~~~~~~~~~~~~~~

Enables and configures the ntpd plugin.

``collectd.packages``
~~~~~~~~~~~~~~~~~~~~~

This state is used to install OS packages collectd plugins depend on.

``collectd.postgresql``
~~~~~~~~~~~~~~~~~~~~~~~

Enables and configures the postgresql plugin. Needs refinement.

``collectd.syslog``
~~~~~~~~~~~~~~~~~~~

Enables and configures the syslog plugin.

``collectd.python``
~~~~~~~~~~~~~~~~~~~

Enables and configures the python plugin, which allows executiong arbitrary python scripts.

``collectd.write_riemann``
~~~~~~~~~~~~~~~~~~~~~~~~~~

Enables and configures the write_riemann plugin, which outputs metric data to a riemann server

.. code:: yaml

   write_riemann:
      host: "riemann.service.dsd.io"
      port: 5555
      tag: "riemann"


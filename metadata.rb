name 'mongodb_cookbook2'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures mongodb_cookbook2'
long_description 'Installs/Configures mongodb_cookbook2'
version '0.1.0'
chef_version '>= 14.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/mongodb_cookbook2/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/mongodb_cookbook2'

# recipe 'mongodb', 'Installs and configures a single node mongodb instance'
# recipe 'mongodb::mongos', 'Installs and configures a mongos which can be used in a shared setup'

# depends 'mongodb'
depends 'apt'
# depends 'yum'
# depends 'python'


# include_attribute 'mongodb/config/dbpath',
#           :display_name => 'dbpath',
#           :description => 'path to store the mongodb data',
#           :default => '/var/lib/mongodb'
#
# include_attribute 'mongodb/reload_action',
#           :display_name => 'reload_action',
#           :description => 'action to take when mongodb config files are modified',
#           :default => 'restart'
#
# include_attribute 'mongodb/package_version',
#           :display_name => 'mongodb package version',
#           :description => 'version of the mongodb package to install',
#           :default => ''
#
# include_attribute 'mongodb/configfile',
#           :display_name => 'configuration file',
#           :description => 'name of configuration file to use when starting mongod/mongos vs command line options',
#           :default => 'restart'

# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'mongodb_cookbook2'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'mongodb_cookbook2::default'
# run_list 'mongodb::install'
# recipe 'mongodb', 'Installs and configures a single node mongodb instance'
# recipe 'mongodb::mongos', 'Installs and configures a mongos which can be used in a shared setup'

# Specify a custom source for a single cookbook:
cookbook 'mongodb_cookbook2', path: '.'

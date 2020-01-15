#
# Cookbook:: mongodb_cookbook2
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

execute 'Retrive_key' do
  command 'sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927'
  action :run
end

execute 'Create_list' do
  command 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list'
  action :run
end

include_recipe 'apt'
apt_update

execute 'Specific_version_install' do
  command 'sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20'
end

execute 'provision' do
  command 'sudo systemctl restart mongod'
  action :run
end

execute 'provision_script' do
  command 'sudo systemctl enable mongod'
  action :run
end

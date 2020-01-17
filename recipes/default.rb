#
# Cookbook:: mongodb_cookbook2
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

include_recipe 'apt'

execute 'Retrive_key' do
  command 'sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 4B7C549A058F8B6B'
  action :run
end

execute 'Create_list' do
  command "echo 'deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse' | sudo tee /etc/apt/sources.list.d/mongodb.list"
  action :run
end

execute 'mongod_update_sourcelist' do
  command "echo 'deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse' | sudo tee /etc/apt/sources.list.d/mongodb.list"
  action :run
end

execute 'apt_update' do
  command 'sudo apt-get update -y'
  action :run
end

execute 'Specific_version_install' do
  command 'sudo apt install mongodb-org=4.2.1 mongodb-org-server=4.2.1 mongodb-org-shell=4.2.1 mongodb-org-mongos=4.2.1 mongodb-org-tools=4.2.1'
end

execute 'provision' do
  command 'sudo systemctl restart mongod'
  action :run
end

execute 'provision_script' do
  command 'sudo systemctl enable mongod'
  action :run
end

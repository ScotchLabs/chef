#
# Cookbook Name:: scotch
# Recipe:: default
#
# Copyright 2013, Scotch Labs
#
# All rights reserved - Do Not Redistribute
#

user node['scotch']['web_user'] do
  home "/home/#{node['scotch']['web_user']}"
  shell "/bin/bash"
  supports :manage_home => true
end

directory "/home/#{node['scotch']['web_user']}/.ssh" do
  action :create
  owner node['scotch']['web_user']
  group node['scotch']['web_user']
  mode '0700'
end

template "/home/#{node['scotch']['web_user']}/.ssh/authorized_keys" do
  source 'authorized_keys.erb'
  owner  node['scotch']['web_user']
  group  node['scotch']['web_user']
  mode  '0600'
  variables(:keys => data_bag_item('users', 'deploy')["ssh_keys"])
end

directory "#{node['scotch']['deploy_to']}" do
  action :create
  owner  node['scotch']['web_user']
  group  node['scotch']['web_user']
  mode '0755'
end

directory "#{node['scotch']['deploy_to']}/shared" do
  action :create
  owner  node['scotch']['web_user']
  group  node['scotch']['web_user']
  mode '0755'
end

template "#{node['scotch']['deploy_to']}/shared/database.yml" do
  source 'database.yml.erb'
  owner  node['scotch']['web_user']
  group  node['scotch']['web_user']
  mode '0644'
end


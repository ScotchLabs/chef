#
# Cookbook Name:: scotch
# Recipe:: default
#
# Copyright 2013, Scotch Labs
#
# All rights reserved - Do Not Redistribute
#

rvm_ruby node['scotch']['ruby_version']

rvm_gem "bundler" do
  ruby_string node['scotch']['ruby_version']
end


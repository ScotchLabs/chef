default['scotch']['web_user'] = "deploy"
default['scotch']['deploy_to'] = "/home/#{node['scotch']['web_user']}/scotch"
default['scotch']['environment'] = "production"
default['scotch']['database'] = "scotch"
default['scotch']['database_user'] = "root"
default['scotch']['database_password'] = (node['mysql']['server_root_password'] rescue nil)
default['scotch']['database_host'] = "localhost"
default['scotch']['ruby_version'] = "1.9.3-p448"


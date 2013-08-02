site :opscode

cookbook "nginx", "~>1.7"
cookbook "redisio"
cookbook "postfix"
cookbook "mysql"
cookbook "apt"
cookbook "build-essential"
cookbook "ruby-src", :git => "git@github.com:StatusPage/chef-ruby-src.git"

Dir[File.join(File.expand_path('cookbooks', File.dirname(__FILE__)), '*')].select { |obj| File.directory?(obj) }.each do |path|
  cookbook File.basename(path), path: path
end


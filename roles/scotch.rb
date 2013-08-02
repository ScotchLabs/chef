name "scotch"
description "Configuration for the Scotch server"
run_list "recipe[apt]", "recipe[build-essential]", "recipe[mysql::server]", "recipe[redisio]", "recipe[ruby-src]", "recipe[nginx]", "recipe[postfix]"
override_attributes({
  "starter_name" => "Scotch Labs",
})

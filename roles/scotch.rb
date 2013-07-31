name "scotch"
description "Configuration for the Scotch server"
run_list "recipe[mysql::server]", "recipe[redisio]", "recipe[nginx]", "recipe[postfix]"
override_attributes({
  "starter_name" => "Scotch Labs",
})

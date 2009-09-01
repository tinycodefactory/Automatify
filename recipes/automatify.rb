#-------------------
#  ENVIRONMENTS
#-------------------
task :local do
  CONFIG = YAML.load_file("/../servers.yml")["local"]
  
  set :environment, "local"
  puts  CONFIG.inspect
end


namespace :foo do
  desc <<-DESC
  Deploys your project.  \
  this will generally only work for applications that have already been deployed \
  once. For a "cold" deploy, you'll want to take a look at the `deploy:cold' \
  task, which handles the cold start specifically.
  DESC
  task :touch_restart_file do
    run "touch /tmp/restart.txt" # will execute remotely on your server(s)
  end
  
  task :say_env do
    puts "#{environment}"
  end   
end
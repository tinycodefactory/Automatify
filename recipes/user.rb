namespace :user do
  desc <<-DESC
  Deploys your project.  \
  this will generally only work for applications that have already been deployed \
  once. For a "cold" deploy, you'll want to take a look at the `deploy:cold' \
  task, which handles the cold start specifically.
  DESC
  task :touch_restart_file do
    run "touch /tmp/restart.txt" # will execute remotely on your server(s)
  end
  
  desc "adds an 'admin' user to use intead of logging in as root"
  task :add do
    run "ssh root@#{server_ip}"
    run "exit"
    #sudo "add user sysadmin"
  end   
end
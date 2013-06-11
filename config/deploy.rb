require "bundler/capistrano"
require "rvm/capistrano"

set :bundle_cmd, 'source $HOME/.bash_profile && bundle'

set :rvm_ruby_string, '1.9.3-p392'
set :rvm_type, :user  # Don't use system-wide RVM

server 'docs.clause-logic.com', :app, :web, :db, :primary => true
set :application, "cls-docs"
set :user, "ec2-user"
set :group, "ec2-user"
set :use_sudo, false

set :repository, "git@github.com:hgslabs/cls-docs.git"
set :scm, :git
set :branch, "master"
set :scm_verbose, true

default_run_options[:pty] = true
ssh_options[:forward_agent] = true
ssh_options[:keys] = ["clsadmin.pem"]

set :deploy_to, "/home/ec2-user/public_html/#{application}"
set :deploy_via, :remote_cache
set :deploy_env, 'development'

namespace :deploy do
  task :start do   
  end
  
  task :stop do 
  end
  
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end

  task :symlink_shared do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
  end
end

after 'deploy:update_code', 'deploy:symlink_shared'

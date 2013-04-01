# Name
set :application, "EmoteCloud"

# Repository
set :repository,  "git://github.com/EmoteCloud/EmoteCloud.git"
set :scm, :git

# Server Addresses
role :web, "emote.hyperized.net"
role :app, "emote.hyperized.net"
role :db,  "emote.hyperized.net", :primary => true

# Settings
set :deploy_via, :remote_cache
set :deploy_to, "/var/apps/emotecloud"
set :user, "deploy"
set :use_sudo, false

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end

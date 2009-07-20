default_run_options[:pty] = true

set :scm, :git
set :use_sudo, false
set :user, "martijn"

ssh_options[:username] = "martijn"
set :deploy_to, '/var/www/kostendeler.nl/httpdocs'
set :application, "kostendeler"
set :repository,  "git@github.com:lafeber/cost-sharer.git"
#git@145.103.105.239:kostendeler.git
  
# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
# set :deploy_to, "/var/www/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
# set :scm, :subversion

namespace :deploy do
   task :start, :roles => :app do
   end

   task :stop, :roles => :app do
   end

   task :restart, :roles => :app do
       run "touch #{release_path}/tmp/restart.txt"
   end

   task :after_update_code, :roles => :app do
       run "rm -rf #{release_path}/public/.htaccess"
       run "ln -s /var/www/kostendeler.nl/config/database.yml #{release_path}/config/database.yml"
       # run "rm #{release_path}/index.html"
   end
end

role :app, "145.103.105.239"
role :web, "145.103.105.239"
role :db,  "145.103.105.239", :primary => true
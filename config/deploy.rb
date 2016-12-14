# config valid only for current version of Capistrano
lock '3.5.0'

set :rvm_ruby_version, '2.2.2@nccatch'

set :application, 'nccatch'

set :repo_url, 'git@bitbucket.org:SlobodaStudioB/nc_catch.git'

set :scm, :git

set :linked_files, %w{config/database.yml config/secrets.yml}

set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets public/system}

set (:unicorn_pid)  { "#{deploy_to}/shared/pids/unicorn.pid" }

set :keep_releases, 5

namespace :unicorn do
	desc "Rake unicorn_stop"
	task :stop_server do
	  on 'adam@23.92.28.86' do
      run "if [ -f #{unicorn_pid} ] && [ -e /proc/$(cat #{unicorn_pid}) ]; then kill -QUIT `cat #{unicorn_pid}`; fi"
	  end
	end
end

namespace :deploy do
  after :finishing, 'deploy:cleanup'
  after :finishing, 'deploy:migrate'
  after :finishing, 'deploy:assets:precompile'
  after :finishing, 'unicorn:stop_server'
  after :finishing, 'unicorn:start'
end

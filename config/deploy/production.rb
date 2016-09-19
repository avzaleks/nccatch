# set :domain, 'nccatch'
set :user, 'adam'
set :deploy_to, '/apps/nccatch'

set :default_shell, '/bin/bash --login'

set :rails_env, 'production'
set :branch, 'production'
set :unicorn_env, 'production'
set :unicorn_pid, "#{deploy_to}/shared/pids/unicorn.pid"
set :unicorn_config, "/apps/nccatch/current/config/unicorn-production.rb"

server '23.92.28.86',
  roles: %w{web app db},
  ssh_options: {
    user: 'adam'
  }

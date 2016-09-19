# set :domain, 'nccatch_staging'
set :user, 'adam'
set :deploy_to, '/apps/nccatch_staging'

set :default_shell, '/bin/bash --login'

set :rails_env, 'staging'
set :branch, 'staging'

set :unicorn_env, 'staging'
set :unicorn_pid, "#{deploy_to}/shared/pids/unicorn.pid"
set :unicorn_config, "/apps/nccatch_staging/current/config/staging.rb"

server '23.92.28.86',
  roles: %w{web app db},
  ssh_options: {
    user: 'adam'
  }

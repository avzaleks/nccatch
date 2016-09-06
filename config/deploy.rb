# config valid only for current version of Capistrano
lock '3.4.0'

set :rvm_ruby_version, '2.2.2@nccatch'

set :application, 'nccatch'

set :repo_url, 'git@github.com:avzaleks/nccatch.git'

set :scm, :git

set :linked_files, %w{config/database.yml config/secrets.yml}

set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets public/system}

set :keep_releases, 5

namespace :deploy do
  after :finishing, 'deploy:cleanup'
  after :finishing, 'deploy:assets:precompile'
  after :finishing, 'unicorn:restart'
end

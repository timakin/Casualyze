set :stage, :staging
set :branch, 'development'
set :rails_env, 'staging'
set :migration_role, 'db'

server 'staging.example.local', user: 'deploy', roles: %w{web app db}
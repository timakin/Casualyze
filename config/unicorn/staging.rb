set :branch, 'master'

role :app, %w{timakin@153.121.70.114}
role :web, %w{timakin@153.121.70.114}
role :db,  %w{timakin@153.121.70.114}

server '153.121.70.114', user: 'timakin', roles: %w{web app db}

set :ssh_options, {
    keys: [File.expand_path('~/.ssh/id_rsa')],
    forward_agent: true,
}
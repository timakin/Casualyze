role :app, %w{timakin@casualyze.com}
role :web, %w{timakin@casualyze.com}
role :db,  %w{timakin@casualyze.com}

server 'casualyze.com', user: 'timakin', roles: %w{web app db}

set :ssh_options, {
    keys: %w(~/.ssh/id_rsa),
    forward_agent: true,
    auth_methods: %w(publickey)
}
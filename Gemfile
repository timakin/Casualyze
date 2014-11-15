source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.4'

# DB
#gem 'sqlite3', :group => [:development, :test]
gem 'mysql2', :group => [:development, :test, :production]

group :assets do
  gem 'jquery-rails'

  # Bootstrap
  gem 'bootstrap-sass', :git => 'https://github.com/thomas-mcdonald/bootstrap-sass.git'
  gem 'bootstrap-generators', :git => 'git://github.com/decioferreira/bootstrap-generators.git'
  gem "font-awesome-rails"

  # default
  gem 'sass-rails', '~> 4.0.0'
  gem 'uglifier', '>= 1.3.0'
  gem 'coffee-rails', '~> 4.0.0'

  # zurui-design
  gem "zurui-sass-rails"

  # backbone
  gem 'underscore-rails'
  gem 'rails-backbone'

  # browser expansion
  gem 'bourbon'
end


group :development, :test do
  # コンソール画面を綺麗にする
  gem "rails-erd"
  gem 'hirb'
  gem 'hirb-unicode'
  gem 'pry', '< 0.10.0'
  gem 'pry-rails'
  gem 'binding_of_caller'
  
  # supporter
  gem 'sextant'
  gem 'quiet_assets'
  gem 'better_errors'
  gem 'meta_request'
  gem 'rails_config'

  # Test Environment
  gem 'rspec'
  gem 'minitest'
  gem 'capybara'
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'factory_girl_rails'
  gem 'spork'
  gem 'shoulda-matchers', require: false

  # Guard
  gem 'guard', '~> 2.8'
  gem 'guard-spork'

  # Notify
  gem 'growl', require: false # for Mac
  gem 'libnotify', require: false # for *nix

  gem 'web-console'
end

gem 'dropzonejs-rails'
gem 'twitter-bootstrap-rails', github: 'seyhunak/twitter-bootstrap-rails', branch: 'bootstrap3'

# registration
gem 'devise'

# OmniAuth
gem 'omniauth'
gem "omniauth-facebook"
gem "omniauth-twitter"
gem 'omniauth-google-oauth2'

# comments
gem 'acts_as_commentable'

# tags
gem 'acts-as-taggable-on'

# authentification
gem 'cancan'
gem 'party_boy'

# search
gem 'ransack'

# feed
gem 'public_activity'
gem 'reditor'
gem 'friendly_id'
gem 'foreigner'

# Markdown
gem 'redcarpet'
gem "pygments.rb"
gem "nokogiri"

# admin
gem 'activeadmin', github: 'gregbell/active_admin'
gem "polyamorous", :github => "activerecord-hackery/polyamorous"
#gem "formtastic", github: "justinfrench/formtastic"

# picture upload
gem 'carrierwave'
gem 'mime-types'
gem 'mini_magick'
gem 'rmagick', require: 'RMagick'
gem 'rails_12factor'
gem 'paperclip'

# AccessCount
gem 'ahoy_matey'
gem 'activeuuid', '>= 0.5.0'

# default
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

# GA
gem 'google-analytics-rails'
gem 'google-analytics-turbolinks'

# pagination
gem 'kaminari'
gem 'will_paginate', '~> 3.0'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

gem "therubyracer"

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
gem 'unicorn'
# cron
gem 'whenever', require: false

gem 'bower-rails'

group :deployment do
  gem "capistrano", '~> 3.2.1'
  gem "capistrano-rails"
  gem "capistrano-bundler"
  gem "capistrano-rbenv"
  gem "capistrano3-unicorn"
  gem 'rvm1-capistrano3', require: false
  gem 'capistrano-ext'
  gem 'capistrano_rsync_with_remote_cache'
end


# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

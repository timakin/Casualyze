source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.4'

# DB設定
#gem 'sqlite3', :group => [:development, :test]
gem 'mysql2', :group => [:development, :test]

group :production do
  gem 'pg'
end

group :assets do
  gem 'jquery-rails'

  # Bootstrap
  gem 'bootstrap-sass', :git => 'https://github.com/thomas-mcdonald/bootstrap-sass.git'
  gem 'bootstrap-generators', :git => 'git://github.com/decioferreira/bootstrap-generators.git'
  gem "font-awesome-rails"

  # デフォルトのassets用のgem
  gem 'sass-rails', '~> 4.0.0'
  gem 'uglifier', '>= 1.3.0'
  gem 'coffee-rails', '~> 4.0.0'

  # ずるいデザイン
  gem "zurui-sass-rails"
  gem 'jquery-rails'

  # backbone用ライブラリ
  gem 'underscore-rails'
  gem 'rails-backbone'

  # ブラウザ互換用ライブラリ
  gem 'bourbon'
end


group :development do
  # コンソール画面を綺麗にする
  gem "rails-erd"
  gem 'hirb'
  gem 'hirb-unicode'
  gem 'pry-rails'
  gem 'binding_of_caller'
  
  # ブラウザでの確認を容易にする
  gem 'sextant'
  gem 'quiet_assets'
  gem 'better_errors'
  gem 'meta_request'
  gem 'rails_config'
end

gem 'dropzonejs-rails'
gem 'twitter-bootstrap-rails', github: 'seyhunak/twitter-bootstrap-rails', branch: 'bootstrap3'


# 会員登録用
gem 'devise'

# OmniAuthログイン用
gem 'omniauth'
gem "omniauth-facebook"
gem "omniauth-twitter"
gem 'omniauth-google-oauth2'

# コメント機能（予備）
gem 'acts_as_commentable'

# タグ機能
gem 'acts-as-taggable-on'
gem 'rspec-rails'

# 権限管理
gem 'cancan'
gem 'party_boy'

# 検索機能
gem 'ransack'

# フィード実装用
gem 'public_activity'
gem 'reditor'
gem 'friendly_id'
gem 'foreigner'

# Markdown機能用
gem 'redcarpet'
gem "pygments.rb"
gem "nokogiri"

# 管理画面用
gem 'activeadmin', github: 'gregbell/active_admin'
gem "polyamorous", :github => "activerecord-hackery/polyamorous"
gem "formtastic", github: "justinfrench/formtastic"

# 写真アップロード機能
gem 'carrierwave'
gem 'mime-types'
gem 'mini_magick'
gem 'rmagick', require: false

# デフォルトのgem
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

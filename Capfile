require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/rails'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'
require 'capistrano/rbenv'
#require 'rvm1/capistrano3'
require 'capistrano/bundler'
require 'capistrano3/unicorn' # unicornを使っている場合のみ
require 'whenever/capistrano' # wheneverを使っている場合のみ

Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
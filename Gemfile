source 'https://rubygems.org'

gem 'sinatra'
gem 'rack'
gem 'activerecord'       # to enable database
gem 'sinatra-activerecord' #also for DB
gem 'rake'


group :test, :development do  #setting groups / environments
  gem 'pry'
  gem 'sqlite3' #for db
end


group :test do  #these will not be loaded in production environment
  gem 'rack-test'
end

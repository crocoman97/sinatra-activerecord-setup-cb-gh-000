ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])
configure :development do 
  set :database.db, 'sqlite3:db/database.db'
end

require './app'
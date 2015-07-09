require 'rubygems'
require 'bundler'

Bundler.require

DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite://#{Dir.pwd}/development.sqlite")

require './todo'

# We've required all of the models
DataMapper.finalize

# Change the database if the definitions change
DataMapper.auto_upgrade!

require './app'
run Sinatra::Application

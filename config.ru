require 'bundler'
Bundler.setup
require 'sinatra/base'
require 'sinatra'
require "sinatra/reloader" if development?
require 'sprockets'
require 'slim'
require './app'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets/javascripts'
  environment.append_path 'assets/stylesheets'
  environment.append_path 'assets/templates'
  run environment
end

map '/' do
  run Sinatra::Application
end

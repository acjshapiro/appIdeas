ENV['RACK_ENV'] ||= 'development'  #Either use rack environment that is set.. otherwise use development mode

require 'bundler'
Bundler.require :default, ENV['RACK_ENV'].to_sym # converts the string 'development' to symbol
require 'sinatra/base'
require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'
require './environments'
require './models/app'

require_relative 'routes'

class Ideas < Sinatra::Base  #class Ideas inheriting from Sinatra Base
  set :root, File.dirname(__FILE__)   # FILE is a variable with a relative path
  enable :sessions                    #based on where you are in your comoputer
  set :views, Proc.new {File.join(root, "views")} #tell sinatra that views will be in root/views
  register Sinatra::ActiveRecordExtension
  use Rack::MethodOverride





end #end class Ideas

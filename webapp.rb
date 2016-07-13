require 'bundler/setup'
require 'sinatra/base'
require 'pry'


class Firstwebapp < Sinatra::Base

  get "/" do
    "Welcome, World"
  end


  get "/Welcome/webapp/for/:billy" do
    Webapp.new(params["name"]).generate
  end


run! if app_file == $0



end

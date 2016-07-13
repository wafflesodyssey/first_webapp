require 'bundler/setup'
require 'sinatra/base'
require 'pry'


class Firstwebapp < Sinatra::Base

  get "/" do
    "Welcome, World"
  end


  get "/:name" do
    "Welcome " + params["name"].capitalize
  end

  get "/lorem/standard" do

  end

  
run! if app_file == $0



end

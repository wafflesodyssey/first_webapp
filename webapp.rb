require 'bundler/setup'
require 'sinatra/base'
require 'pry'


class Firstwebapp < Sinatra::Base

  get "/Welcome" do
    "Welcome, World"
  end

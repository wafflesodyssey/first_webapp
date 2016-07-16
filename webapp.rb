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

  get "/lorem/:standard" do
    if params["standard"] == "key"
      "They will try to close the door on you, just open it. They don’t want us
       to win. They key is to have every key, the key to open every door. Look
       at the sunset, life is amazing, life is beautiful, life is what you make
       it. Let’s see what Chef Dee got that they don’t want us to eat. They key
       is to have every key, the key to open every door. Look at the sunset,
       life is amazing, life is beautiful, life is what you make it. I’m up to
       something. Wraith talk."
     elsif params["standard"] == "cloth"
       "Cloth talk. I’m giving you cloth talk, cloth. Special cloth alert, cut
       from a special cloth. You see that bamboo behind me though, you see that
       bamboo? Ain’t nothin’ like bamboo. Bless up. To be successful you’ve got
       to work hard, to make history, simple, you’ve got to make it. We don’t
       see them, we will never see them. They don’t want us to eat. I told you
       all this before, when you have a swimming pool, do not use chlorine, use
         salt water, the healing, salt water is the healing."
      end
end

run! if app_file == $0
end

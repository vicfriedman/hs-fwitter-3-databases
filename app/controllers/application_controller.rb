require './config/environment'
require './app/models/tweet'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    # Now that our database is configured, our Tweets will persist on every refresh, even if we restart the server. 
    @tweets = Tweet.all
    erb :index
  end

  get '/tweet' do
    erb :tweet
  end

  post '/tweet' do
    # Tweet.new(params[:username], params[:status])
    # When creating new tweets, ActiveRecord uses hash syntax - we pass in a hash where the key is the column name and the value is whatever we want. 
    tweet = Tweet.new({:username => params[:username], :status => params[:status]}) # We save the tweet into an instance variable. 
    tweet.save # We then save it to the database using the "save" method
    redirect '/'
  end

end

require_relative "../../config/environment"
require './app/models/tweet'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/tweets' do
    @tweets = Tweet.all
    erb :tweets
  end

  post '/tweets' do
    # Tweet.new(params[:user], params[:status])
    tweet = Tweet.new({:user => params[:user], :status => params[:status]})
    tweet.save
    redirect '/tweets'
  end

end
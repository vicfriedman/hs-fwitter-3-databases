require_relative "../../config/environment"
require './app/models/tweet'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  configure :development do
    set :database, "sqlite3:///db/database.db"
  end

  get '/tweets' do
    @tweets = Tweet.all
    erb :tweets
  end

  post '/tweets' do
    # Tweet.new(params[:user], params[:status])
    Tweet.create(:user => params[:user], :status => params[:status])
    redirect '/tweets'
  end

end
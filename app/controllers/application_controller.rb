require_relative "../../config/environment"

class ApplicationController < Sinatra::Base

  get '/tweets' do
    @tweets = Tweet.all
    erb :tweets
  end

  post '/tweets' do
    # Tweet.new(params[:user], params[:status])
    Tweet.create(:user => params[:user], :status => params[:status])
    redirect '/tweets'
  end

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  configure :development do
    set :database, "sqlite3:///db/database.db"
  end
end
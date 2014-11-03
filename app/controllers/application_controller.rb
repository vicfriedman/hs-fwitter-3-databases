require_relative "../../config/environment"

class ApplicationController < Sinatra::Application

  get '/tweets' do
    @tweets = Tweet.all
    erb :tweets
  end

  post '/tweets' do
    # Tweet.new(params[:user], params[:status])
    Tweet.create(:user_name => params[:user], :status => params[:status])
    redirect '/tweets'
  end
end
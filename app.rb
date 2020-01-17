require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb :homepage
  end

  get '/bookmarks' do
    erb :index
  end

  get '/bookmarks/new' do
    erb :new
  end

  post '/bookmarks' do
    Bookmarks.add_bookmark params[:url]
    redirect '/bookmarks'
  end

  before do
    @bookmarks = Bookmarks.all
  end

  run! if app_file == $0
end

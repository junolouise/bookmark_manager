require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  post '/bookmarks' do
    p ENV

    @bookmarks = Bookmarks.all

    url = params['url']
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
    redirect '/bookmarks'
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  get '/bookmarks' do
    erb :'bookmarks/index'
  end

  run! if app_file == $0
end

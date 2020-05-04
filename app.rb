require 'sinatra'
require './lib/bookmark'

class Bookmarks < Sinatra::Base

  get '/' do
    'Testing stuff'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb(:bookmarks)
  end
end

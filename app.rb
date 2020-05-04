require 'sinatra'

class Bookmarks < Sinatra::Base

  get '/' do
    'Testing stuff'
  end

  get '/bookmarks' do
    @bookmark1 = Bookmark.new('Google', 'https://www.google.com/')
    @bookmark2 = Bookmark.new('Github', 'https://www.github.com/')
    @bookmark3 = Bookmark.new('Stackoverflow', 'https://www.stackoverflow.com/')
    @bookmarks = Bookmark.all
    erb(:bookmarks)
  end
end

require 'sinatra'

class Bookmarks < Sinatra::Base

  get '/' do
    'Testing stuff'
  end

  get '/bookmarks' do
    erb(:bookmarks)
  end
end

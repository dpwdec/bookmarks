require 'pg'

class Bookmark
  attr_reader :name, :url

  def initialize(name, url)
    @name = name
    @url = url
  end

  def self.all
    # PG => log into our database => psql
    # \c bookmark_manager
    connection = PG.connect(dbname: 'bookmark_manager')
    # SELECT * FROM bookmarks;
    result = connection.exec('SELECT * FROM bookmarks;')
    bookmarks = []
    result.each do |bookmark|
      bookmarks << bookmark['url']
    end
    return bookmarks
  end
end

require 'pg'

class Bookmark
  attr_reader :name, :url

  def initialize(name, url)
    @name = name
    @url = url
  end

  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec('SELECT * FROM bookmarks;')
    bookmarks = []
    result.each do |bookmark|
      bookmarks << bookmark['url']
    end
    bookmarks
  end
end

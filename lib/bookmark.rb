class Bookmark
  attr_reader :name, :url

  def initialize(name, url)
    @name = name
    @url = url
  end

  def self.all
    [Bookmark.new('Google', 'https://www.google.com/'),
    Bookmark.new('Github', 'https://www.github.com/'),
  Bookmark.new('Stackoverflow', 'https://www.stackoverflow.com/')]
  end
end

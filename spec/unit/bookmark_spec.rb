require 'bookmark'

describe Bookmark do

  let(:subject) { described_class.new('Google', 'https://www.google.com/')}

  describe '#name' do
    it 'returns its name' do
      expect(subject.name).to eq('Google')
    end
  end

  describe '#url' do
    it 'returns its url address' do
      expect(subject.url).to eq('https://www.google.com/')
    end
  end

  describe '.all' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include "http://www.makersacademy.com"
      expect(bookmarks).to include "http://www.destroyallsoftware.com"
      expect(bookmarks).to include "http://www.google.com"
    end
  end
end

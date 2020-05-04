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
end

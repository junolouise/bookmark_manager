require 'bookmark'

describe Bookmarks do
  describe '.all' do
    it 'returns all bookmarks' do
      connect = PG.connect( :dbname => 'bookmark_manager', :user => 'student')
      bookmarks = Bookmarks.all

      expect(bookmarks).to include("www.google.co.uk")
      expect(bookmarks).to include("www.bbc.co.uk")
    end
  end
end
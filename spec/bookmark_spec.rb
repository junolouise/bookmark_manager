require 'bookmark'

describe Bookmarks do
  describe '.all' do
    it 'returns all bookmarks' do
      connect = PG.connect( :dbname => 'bookmark_manager_test')

      connect.exec("INSERT INTO bookmarks (url) VALUES('www.google.co.uk');")
      connect.exec("INSERT INTO bookmarks (url) VALUES('www.bbc.co.uk');")

      bookmarks = Bookmarks.all

      expect(bookmarks).to include("www.google.co.uk")
      expect(bookmarks).to include("www.bbc.co.uk")
    end
  end
end

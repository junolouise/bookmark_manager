require 'bookmark'

describe Bookmarks do
  describe '.all' do
    it 'returns all bookmarks' do
      connect = PG.connect( :dbname => 'bookmark_manager_test')

      connect.exec("INSERT INTO bookmarks (url, title) VALUES('www.google.co.uk', 'My favourite search engine');")
      connect.exec("INSERT INTO bookmarks (url, title) VALUES('www.bbc.co.uk', 'Non-biased UK based news');")

      bookmarks = Bookmarks.all

      expect(bookmarks.first).to be_a(Bookmarks)
    end
  end

  describe 'add new bookmark' do
    it 'adds bookmark' do
      
      Bookmarks.add_bookmark("www.google.co.uk", "google")
      bookmarks = Bookmarks.all

      expect(bookmarks.first).to be_a(Bookmarks)
    end
  end

end

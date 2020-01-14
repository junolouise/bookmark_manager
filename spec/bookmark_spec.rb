require 'bookmark'

describe Bookmarks do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmarks.all

      expect(bookmarks).to include("www.google.co.uk")
      expect(bookmarks).to include("www.bbc.co.uk")
      expect(bookmarks).to include("www.hotukdeals.co.uk")
    end
  end
end
class Bookmarks 

  def initialize(bookmark = [])
    @bookmark = bookmark
  end

  def self.all
    [
      "www.google.co.uk",
      "www.bbc.co.uk",
      "www.hotukdeals.co.uk"
    ]
  end
  
end
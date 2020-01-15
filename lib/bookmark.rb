require 'pg'

class Bookmarks 

  def initialize(bookmark = [])
    @bookmark = bookmark
  end

  def self.all
    connect = PG.connect( :dbname => 'bookmark_manager', :user => 'student')
    urls = connect.exec "SELECT url FROM bookmarks"
      a = urls.map do |row|
        row['url']
      end
  end
  
end
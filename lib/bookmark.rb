require 'pg'

class Bookmarks

  def initialize(bookmark = [])
    @bookmark = bookmark
  end

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connect = PG.connect( :dbname => 'bookmark_manager_test')
    else
      connect = PG.connect( :dbname => 'bookmark_manager')
    end
    urls = connect.exec "SELECT url FROM bookmarks"
    urls.map do |row|
        row['url']
      end
  end

  def self.add_bookmark(url)
      if ENV['ENVIRONMENT'] == 'test'
        connect = PG.connect( :dbname => 'bookmark_manager_test')
      else
        connect = PG.connect( :dbname => 'bookmark_manager')
      end
      connect.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
  end

end

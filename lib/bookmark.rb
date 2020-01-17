require 'pg'

class Bookmarks

  attr_reader :id, :url, :title

  def initialize(row)
    @id = row["id"]
    @url = row["url"]
    @title = row["title"]
  end

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connect = PG.connect( :dbname => 'bookmark_manager_test')
    else
      connect = PG.connect( :dbname => 'bookmark_manager')
    end
    rows = connect.exec "SELECT url, title, id FROM bookmarks"
    array = rows.map do |row|
      Bookmarks.new(row)
    end
  end

  def self.add_bookmark(url, title)
      if ENV['ENVIRONMENT'] == 'test'
        connect = PG.connect( :dbname => 'bookmark_manager_test')
      else
        connect = PG.connect( :dbname => 'bookmark_manager')
      end
      connect.exec("INSERT INTO bookmarks (url, title) VALUES('#{url}', '#{title}')")
  end

end

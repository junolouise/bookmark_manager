feature 'Viewing bookmarks' do
  
  scenario 'visiting the index page' do
    visit('/bookmarks')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'A user can see bookmarks' do
    connect = PG.connect( :dbname => 'bookmark_manager_test')
    connect.exec("INSERT INTO bookmarks (url, title) VALUES('www.google.co.uk', 'search for stuff');")
    visit('/bookmarks')
    expect(page).to have_content "search for stuff"
  end

end

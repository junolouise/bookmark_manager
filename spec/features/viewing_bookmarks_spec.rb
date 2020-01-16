feature 'Viewing bookmarks' do
  
  scenario 'visiting the index page' do
    visit('/bookmarks')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'A user can see bookmarks' do
    connect = PG.connect( :dbname => 'bookmark_manager_test')
    connect.exec("INSERT INTO bookmarks (url) VALUES('www.google.co.uk');")
    connect.exec("INSERT INTO bookmarks (url) VALUES('www.bbc.co.uk');")
    visit('/bookmarks')
    expect(page).to have_content "www.google.co.uk"
    expect(page).to have_content "www.bbc.co.uk"
  end

end

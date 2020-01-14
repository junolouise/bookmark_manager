feature 'Viewing bookmarks' do
  
  scenario 'visiting the index page' do
    visit('/bookmarks')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'A user can see bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "www.google.co.uk"
    expect(page).to have_content "www.bbc.co.uk"
    expect(page).to have_content "www.hotukdeals.co.uk"
  end

end

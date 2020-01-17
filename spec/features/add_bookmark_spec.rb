feature 'Add bookmark' do

  scenario 'user can add bookmark to bookmark manager' do
    visit ('/bookmarks/new')
    fill_in('url', with: "www.amazon.co.uk")
    click_button "Add"
    
    expect(page).to have_content 'www.amazon.co.uk'
  end

end
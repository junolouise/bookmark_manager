feature 'Add bookmark' do

  scenario 'user can add bookmark to bookmark manager' do
    visit ('/bookmarks/new')
    fill_in('url', with: "www.amazon.co.uk")
    fill_in('title', with: "buying tingz")
    click_button "Add"

    expect(page).to have_content 'buying tingz'
  end

end
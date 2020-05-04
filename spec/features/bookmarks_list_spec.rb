feature 'show a list of  bookmarks' do
  scenario 'load /bookmarks page' do
    visit('/bookmarks')
    expect(page).to have_content('Google: https://www.google.com/')
    expect(page).to have_content('Github: https://www.github.com/')
    expect(page).to have_content('Stackoverflow: https://www.stackoverflow.com/')
  end
end

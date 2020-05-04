feature 'Testing infraestrusture' do 
  scenario 'homepage' do 
    visit('/')
    expect(page).to have_content 'Testing stuff'
  end
end 
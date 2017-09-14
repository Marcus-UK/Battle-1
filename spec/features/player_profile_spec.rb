RSpec.feature 'Players to update their profiles ' do
  scenario 'Fill in name form with John' do
    sign_in_and_play
    save_and_open_page
    expect(page).to have_content 'Marcus vs James'
  end
end

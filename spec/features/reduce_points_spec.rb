require 'player'

feature 'Reducing hit points' do
  scenario 'attack reduces player 2s HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).not_to have_content 'James: 60HP'
    expect(page).to have_content 'James: 50HP'
  end
end

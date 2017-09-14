feature 'Attacking' do
  scenario 'Attack player 2 and take off hit points' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content "Marcus attacked James"

  end
end

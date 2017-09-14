def sign_in_and_play
  visit('/')
  fill_in :Player1, with: 'Marcus'
  fill_in :Player2, with: 'James'
  click_button 'Submit'
end

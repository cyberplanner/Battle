def sign_in_and_play
  visit "/"
  fill_in "Player1", :with => 'Ben'
  fill_in "Player2", :with => 'Ross'
  click_button "Submit"
end

def attack_and_confirm
  click_button "attack!"
  click_link "OK"
end

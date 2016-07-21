require "spec_helper"

RSpec.feature "Enter player names", :type => :feature do
  scenario "when player names are entered" do
    sign_in_and_play
    expect(page).to have_text 'Ben Vs. Ross'
  end

  scenario "shows player2's hit points" do
    sign_in_and_play
    expect(page).to have_text 'Ross: 100 HP'
  end

  scenario "Hit player two and confirm attack" do
    sign_in_and_play
    click_button "attack!"
    expect(page).to have_text 'Ben Attacked Ross'
    click_link "OK"
  end


  scenario "#Attcking: Attack reduce player2 health by 10" do
    sign_in_and_play
    click_button "attack!"
    click_link "OK"
    expect(page).to have_text 'Ross: 90 HP'
  end

  scenario "switches a player turn after an attack" do
    sign_in_and_play
    click_button "attack!"
    expect(page).to have_text "Ross's turn"
    click_link "OK"
  end
end

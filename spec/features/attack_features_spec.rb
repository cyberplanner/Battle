require "spec_helper"

RSpec.feature "Attacking" do
  scenario "Hit player two and confirm attack" do
    sign_in_and_play
    attack_and_confirm
    expect(page).to have_text 'Ben Attacked Ross'
  end

  scenario "Hit player one and confirm attack" do
    sign_in_and_play
    attack_and_confirm
    attack_and_confirm
    expect(page).to have_text 'Ross Attacked Ben'
  end

  scenario "#Attcking: Attack reduce player2 health by 10" do
    sign_in_and_play
    attack_and_confirm
    expect(page).to have_text 'Ross: 90 HP'
  end

  scenario "switches a player turn after an attack" do
    sign_in_and_play
    attack_and_confirm
    expect(page).to have_text "Ross's turn"

  end
end

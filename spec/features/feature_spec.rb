require "spec_helper"

RSpec.feature "Enter player names", :type => :feature do
  scenario "when player names are entered" do
    sign_in_and_play
    expect(page).to have_text 'Ben Vs. Ross'
  end

  scenario "shows player2's hit points" do
    sign_in_and_play
    expect(page).to have_text '10 Hit Points'
  end

  scenario "Hit player two and confirm attack" do
    sign_in_and_play
    click_button("attack")
    expect(page).to have_text 'Ben Attacked Ross'
  end

end

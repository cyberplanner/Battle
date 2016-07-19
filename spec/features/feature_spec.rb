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

end

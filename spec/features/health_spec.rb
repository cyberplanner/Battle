require "spec_helper"

RSpec.feature "Shows player health", :type => :feature do
  scenario "shows player2's hit points" do
    sign_in_and_play
    expect(page).to have_text 'Ross: 100 HP'
  end

  scenario "Shows player1's hit points" do
    sign_in_and_play
    expect(page).to have_text 'Ben: 100 HP'
  end
end

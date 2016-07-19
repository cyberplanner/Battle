require "spec_helper"

RSpec.feature "Enter player names", :type => :feature do
  scenario "when player names are entered" do
    visit "/"
    fill_in "Player1", :with => 'Ben'
    fill_in "Player2", :with => 'Ross'
    click_button "Submit"
    expect(page).to have_text 'Ben Vs. Ross'
  end
end

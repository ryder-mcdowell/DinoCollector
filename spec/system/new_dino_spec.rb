require "rails_helper"

RSpec.describe "creating a dino", type: :system do
  it "allows a user to create a dino with a name, attack, defence, and health" do
    visit new_dino_path
    fill_in "Name", with: "trex"
    fill_in "Attack", with: "10"
    fill_in "Defence", with: "10"
    fill_in "Health", with: "10"

    click_on("Create Dino")
    visit dinos_path
    byebug
    expect(page).to have_content("trex")
  end
end

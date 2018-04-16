require "rails_helper"

RSpec.describe "creating a dino", type: :system do
  it "allows a user to create a dino with a name, attack, defence, and health" do
    visit new_dino_path
    fill_in "name", with: "trex"
    fill_in "attack", with: "10"
    fill_in "defence", with: "10"
    fill_in "health", with: "10"

    click_on("Submit")
    visit dino_path
    expect(page).to have_content("trex")
  end
end

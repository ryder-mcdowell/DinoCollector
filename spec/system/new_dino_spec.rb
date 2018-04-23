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
    expect(page).to have_content("trex")
  end

  it "does not allow dinos to be created without a name" do
    visit new_dino_path

    fill_in "Name", with: ""
    fill_in "Attack", with: "10"
    fill_in "Defence", with: "10"
    fill_in "Health", with: "10"

    click_on("Create Dino")
    expect(page).to have_selector(".new_dino")
  end

end

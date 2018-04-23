require "rails_helper"

RSpec.describe "creating a player", type: :system do
  it "allows a user to create a player with a name" do
    visit new_player_path
    fill_in "Player Name", with: "Dino_Master_Bob"
    click_on("Create Player")
    visit players_path
    byebug
    expect(page).to have_content("Dino_Master_Bob")
  end

  it "does not allow user to create a project without a name" do
    visit new_player_path
    fill_in "Player Name", with: ""
    click_on("Create Player")
    expect(page).to have_selector(".new_player")
  end
end

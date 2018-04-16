require "rails_helper"

RSpec.describe "creating a player", type: :system do
  pending "allows a user to create a player with a name" do
    visit new_user_path
    fill_in "Player Name", with: "Dino_Master_Bob"
    click_on("Create New Player")
    visit player_path
    expect(page).to have_content("Dino_Master_Bob")
  end

  pending "allows a user to select a starting dino" do
    visit pick_dino_path
    click_on("Raptor")
    visit player_dinos_path
    expect(page).to have_content("Raptor")
  end
end

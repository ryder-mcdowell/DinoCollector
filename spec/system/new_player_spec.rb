require "rails_helper"

RSpec.describe "creating a player", type: :system do
  it "allows a user to create a player with a name" do
    visit new_user_path
    fill_in "Player Name", with: "Dino_Master_Bob"
    click_on("Create New Player")
    visit player_path
    expect(page).to have_content("Dino_Master_Bob")
  end
end

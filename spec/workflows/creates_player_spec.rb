require "rails_helper"

RSpec.describe CreatesPlayer do

  describe "initialization" do
    it "creates a player given a name" do
      creator = CreatesPlayer.new(name: "Dino_Master_Bob")
      creator.build
      expect(creator.player.name).to eq("Dino_Master_Bob")
    end
  end

  describe "failure cases" do
    it "fails when trying to add a player with no name" do
      creator = CreatesPlayer.new(name: "")
      creator.create
      expect(creator).not_to be_a_success
    end
  end

end

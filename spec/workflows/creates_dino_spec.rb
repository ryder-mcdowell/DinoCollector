require "rails_helper"

RSpec.describe CreatesDino do

  describe "initialization" do
    it "creates a dino given a name" do
      creator = CreatesDino.new(name: "trex", attack: 10,
        defence: 10, health: 10)
      creator.build
      expect(creator.dino.name).to eq("trex")
    end
  end

  describe "failure cases" do
    it "fails when trying to add a dino with no name" do
      creator = CreatesDino.new(name: "", attack: 10,
        defence: 10, health: 10)
      creator.create
      expect(creator).not_to be_a_success
    end
  end

end

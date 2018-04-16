require "rails_helper"

RSpec.describe CreatesPlayer do
  pending "creates a player given a name" do
    create = CreatesPlayer.new(name: "Dino_Master_Bob")
    creator.build
    expect(create.player.name).to eq("Dino_Master_Bob")
  end
end

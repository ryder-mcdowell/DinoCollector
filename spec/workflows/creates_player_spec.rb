require "rails_helper"

RSpec.describe CreatesPlayer do
  it "creates a player given a name" do
    create = CreatesPlayer.new(name: "Dino_Master_Bob")
    creator.build
    expect(create.project.name).to eq("Dino_Master_Bob")
  end
end

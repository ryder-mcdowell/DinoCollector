require "rails_helper"

RSpec.describe Player do
  let(:player) {Player.new}
  let(:dino) {Dino.new("Raptor", 10, 10, 10)}

  it "is not initially in combat" do
    expect(player).not_to be_in_combat
  end

  it "does not have the first turn" do
    player.initiate_combat
    expect(player).to_not be_my_turn
  end

  it "can gain the turn in combat" do
    player.initiate_combat
    player.make_turn
    expect(player).to be_my_turn
  end

  it "doesn't initially have dinos" do
    expect(player.dino_count).to eq(0)
  end

  it "can gain more dinos" do
    player.add_dino(dino)
    expect(player.dino_count).to eq(1)
  end

end

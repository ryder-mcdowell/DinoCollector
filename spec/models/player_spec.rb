require "rails_helper"

RSpec.describe Player do
  let(:player) { FactoryBot.build_stubbed(:player) }
  let(:dino) {Dino.new(name: 'PlayerDino', attack: 1,
      defence: 1, health: 10)}

  it "doesn't initially have dinos" do
    expect(player.number_of_dinos).to eq(0)
  end

  it "can gain more dinos" do
    player.dinos << dino
    expect(player.number_of_dinos).to eq(1)
  end

  it "can use a potion to heal a dino" do
    dino.damage(10)
    player.use_potion(dino)
    expect(player.potions).to eq(0)
    expect(dino).to be_concious
  end

end

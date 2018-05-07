require "rails_helper"

INSPIRE_STRENGTH = 10

RSpec.describe Player do
  let(:player) { FactoryBot.build_stubbed(:player) }
  let(:dino) { FactoryBot.build(:dino) }

  it "doesn't initially have dinos" do
    expect(player.number_of_dinos).to eq(0)
  end

  it "can gain more dinos" do
    player.dinos << dino
    expect(player.number_of_dinos).to eq(1)
  end

  it "can use a potion to heal a dino" do
    dino.damage(10)
    expect(dino).to_not be_concious
    player.use_potion(dino)
    expect(player.potions).to eq(0)
    expect(dino).to be_concious
  end

  it "can inspire dinos to increase dino defence" do
    player.dinos << dino
    expect{ player.inspire_dinos }.to change(dino, :defence).by(INSPIRE_STRENGTH)
  end
end

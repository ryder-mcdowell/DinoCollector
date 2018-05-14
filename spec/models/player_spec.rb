require "rails_helper"

INSPIRE_STRENGTH = 10

RSpec.describe Player do
  let(:player) { FactoryBot.build_stubbed(:player) }
  let(:dino) { FactoryBot.build(:dino) }
  let(:unconcious_dino) { FactoryBot.build(:dino, :unconcious) }

  it "doesn't initially have dinos" do
    expect(player.number_of_dinos).to eq(0)
  end

  it "can gain more dinos" do
    player.dinos << dino
    expect(player.number_of_dinos).to eq(1)
  end

  it "can use a potion to heal a dino" do
    player.use_potion(unconcious_dino)
    expect(player.potions).to eq(0)
    expect(unconcious_dino).to be_concious
  end

  it "can inspire dinos to increase dino defence" do
    player.dinos << dino
    expect{ player.inspire_dinos }.to change(dino, :defence).by(INSPIRE_STRENGTH)
  end

  it "can eat" do
    big_dependency = BigDependency.new
    allow(big_dependency).to receive("execute")
    expect(player.eat(big_dependency)).to eq("yummy")
  end

  it "can eat again" do
    big_dependency = double(execute: 5)
    expect(player.eat(big_dependency)).to eq("yummy")
  end

  it "can eat again again" do
    big_dependency = double("BigDependency")
    allow(big_dependency).to receive("execute")
    expect(player.eat(big_dependency)).to eq("yummy")
  end

end

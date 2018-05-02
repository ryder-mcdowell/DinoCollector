require 'rails_helper'

RSpec.describe Dino, type: :model do
  let(:startName) {'T Rex'}
  let(:startAttack) {10}
  let(:startDefence) {10}
  let(:startHealth) {10}
  let(:dino) {Dino.new(name: startName, attack: startAttack,
      defence: startDefence, health: startHealth)}
  let(:enemy_dino) {Dino.new(name: 'EnemyDino', attack: startAttack,
      defence: startDefence, health: startHealth)}

  it "is has a name" do
    expect(dino.name).to be_truthy
  end
  it "has an attack" do
    expect(dino.attack).to be_truthy
  end
  it "has defence" do
    expect(dino.defence).to be_truthy
  end
  it "has health" do
    expect(dino.health).to be_truthy
  end

  it "can add health" do
    dino.heal(5)
    expect(dino.health).to eq(startHealth+5)
  end
  it "can remove health" do
    dino.damage(5)
    expect(dino.health).to eq(startHealth-5)
  end

  it "knows when it is concious" do
    expect(dino.concious).to be_truthy
  end

  it "knows when it is unconcious" do
    dino.damage(9)
    expect(dino.concious).to be_falsy
  end

  it "can damage another dino" do
    dino.scuffle(enemy_dino)
    expect(enemy_dino).to have_health(0)
  end

  it "gets damaged in an scuffle against another dino" do
    dino.scuffle(enemy_dino)
    expect(dino).to have_health(0)
  end
end

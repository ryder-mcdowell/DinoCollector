require 'rails_helper'

START_HEALTH = 10
ATTACK = 1
DEFENCE = 1

RSpec.describe Dino, type: :model do
  let(:dino) {Dino.new(name: 'PlayerDino', attack: ATTACK,
      defence: DEFENCE, health: START_HEALTH)}
  let(:enemy_dino) {Dino.new(name: 'EnemyDino', attack: ATTACK,
      defence: DEFENCE, health: START_HEALTH)}

  it "can gain health" do
    dino.heal(5)
    expect(dino.health).to eq(START_HEALTH + 5)
  end

  it "can lose health" do
    dino.damage(5)
    expect(dino.health).to eq(START_HEALTH - 5)
  end

  it "goes unconcious from damage that makes it's health equal the lower limit (1)" do
    dino.damage(START_HEALTH)
    expect(dino).to_not be_concious
  end

  it "become concious after being healed" do
    dino.concious = false
    dino.heal(5)
    expect(dino).to be_concious
  end

  it "damages dinos in a scuffle equal to each other's attack" do
    dino.scuffle(enemy_dino)
    expect(dino).to have_health(START_HEALTH - ATTACK)
    expect(enemy_dino).to have_health(START_HEALTH - ATTACK)
  end

  it "can't attack if it is unconcious" do
    dino.concious = false
    expect(dino.scuffle(enemy_dino)).to be_falsy
  end

end

require 'rails_helper'

START_HEALTH = 10
ATTACK = 1
DEFENCE = 1

RSpec.describe Dino, type: :model do
  let(:dino) {Dino.new(name: 'PlayerDino', attack: ATTACK,
      defence: DEFENCE, health: START_HEALTH)}
  let(:enemy_dino) {Dino.new(name: 'EnemyDino', attack: ATTACK,
      defence: DEFENCE, health: START_HEALTH)}

  it "can add health" do
    dino.heal(5)
    expect(dino.health).to eq(START_HEALTH + 5)
  end
  it "can remove health" do
    dino.damage(5)
    expect(dino.health).to eq(START_HEALTH - 5)
  end

  it "knows when it is concious" do
    expect(dino.concious).to be_truthy
  end

  it "knows when it is unconcious" do
    dino.damage(START_HEALTH)
    expect(dino.concious).to be_falsy
  end

  it "can damage another dino" do
    dino.scuffle(enemy_dino)
    expect(enemy_dino).to have_health(START_HEALTH - ATTACK)
  end

  it "gets damaged in an scuffle against another dino" do
    dino.scuffle(enemy_dino)
    expect(dino).to have_health(START_HEALTH - ATTACK)
  end

  it "can't attack if it is unconcious" do
    dino.concious = false
    expect(dino.scuffle(enemy_dino)).to be_falsy
  end
end

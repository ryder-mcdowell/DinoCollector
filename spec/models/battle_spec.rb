require 'rails_helper'

RSpec.describe Battle do
  let(:player) {Player.new}
  let(:player_dino) {Dino.new(name: 'Raptor', attack: 20, defence: 0, health: 80)}
  let(:enemy_dino) {Dino.new(name: 'T Rex', attack: 50, defence: 0, health: 150)}
  let(:battle) {Battle.new(player, enemy_dino)}

  it "can have a fight winner" do
    battle.dino_battle(player_dino)
    expect(enemy_dino).to be_concious
    expect(player_dino).to_not be_concious
  end

  it "reduces the correct amount of health for the participating dinos" do
    battle.attack_with_dino(player_dino)
    expect(player_dino).to have_health(30)
    expect(enemy_dino).to have_health(130)
  end

  it "allows dino defence to reduce damage taken" do
    enemy_dino.defence = 10
    battle.attack_with_dino(player_dino)
    expect(enemy_dino).to have_health(140)
  end

  it "reduces a dinos defence by the amount of damage taken" do
    enemy_dino.defence = 20
    battle.attack_with_dino(player_dino)
    expect(enemy_dino.defence).to eq(0)
  end

  it "will allow players to catch dinos if health is less then 10" do
    player_dino.damage(71)
    expect(player_dino.catchable?()).to be_truthy
  end

  it "will not allow players to catch dinos if they are to healthy" do
    player_dino.damage(70)
    expect(player_dino.catchable?).to_not be_truthy
  end

end

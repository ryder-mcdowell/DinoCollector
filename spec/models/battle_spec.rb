require 'rails_helper'

RSpec.describe Battle do
  let(:player) {Player.new}
  let(:player_dino) {Dino.new(name: 'Raptor', attack: 20, defence: 20, health: 80)}
  let(:enemy_dino) {Dino.new(name: 'T Rex', attack: 50, defence: 50, health: 150)}
  let(:battle) {Battle.new(player, enemy_dino)}

  it "can have a fight winner" do
    expect(battle.attack_with_dino(player_dino)).to eq(enemy_dino)
  end

  it "reduces the correct amount of health for the participating dinos" do
    battle.attack_with_dino(player_dino)
    expect(player_dino.health).to eq(30)
    expect(enemy_dino.health).to eq(130)
  end

end

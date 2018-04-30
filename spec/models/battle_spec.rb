require 'rails_helper'

RSpec.describe Battle do
  let(:player) {Player.new}
  let(:player_dino_strong) {Dino.new(name: 'Giga', attack: 1000, defence: 1000, health: 1000)}
  let(:player_dino_weak) {Dino.new(name: 'Raptor', attack: 1, defence: 1, health: 1)}
  let(:enemy_dino) {Dino.new(name: 'T Rex', attack: 100, defence: 100, health: 100)}
  let(:battle) {Battle.new(player, enemy_dino)}

  it "can have a fight winner" do
    expect(battle.attack_with_dino(player_dino_weak)).to eq(enemy_dino)
  end

end

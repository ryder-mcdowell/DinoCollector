require 'rails_helper'

RSpec.describe Battle do
  let(:player) {Player.new}
  let(:player_dino) {Dino.new(name: 'Raptor', attack: 20, defence: 0, health: 80)}
  let(:enemy_dino) {Dino.new(name: 'T Rex', attack: 50, defence: 0, health: 150)}
  let(:battle) {Battle.new(player, enemy_dino)}

  pending "can have a fight winner" do
    expect(enemy_dino).to be_concious
    expect(player_dino).to_not be_concious
  end

end

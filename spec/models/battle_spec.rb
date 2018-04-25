require 'rails_helper'

RSpec.describe Battle do
  let(:battle) {Battle.new}
  let(:player_dino) {Dino.new(name: 'T Rex', attack: 10, defence: 10, health: 10)}
  let(:enemy_dino) {Dino.new(name: 'Raptor', attack: 5, defence: 5, health: 5)}

  it "can have a fight winner" do
    expect(battle.fight(player_dino, enemy_dino)).to be_truthy
  end

end

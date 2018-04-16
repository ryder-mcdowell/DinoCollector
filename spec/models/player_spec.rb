require 'rails_helper'

RSpec.describe Player do
    let(:player) {Player.new}

    it "is not initially in combat" do
        expect(player.in_combat?).to be_falsy
        #expect(player).not_to be_in_combat
    end



end

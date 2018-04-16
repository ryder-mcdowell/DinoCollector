require "rails_helper"

RSpec.describe Player do
    let(:player) {Player.new}
    let(:dino) {Dino.new("Raptor", 10, 10, 10)}

    it "is not initially in combat" do
        expect(player.in_combat?).to be_falsy
        #expect(player).not_to be_in_combat
    end

    it "doesn't initially have dinos" do
      expect(player.dino_count).to eq(0)
    end

    it "can gain more dinos" do
      player.add_dino(dino)
      expect(player.dino_count).to eq(1)
    end

end

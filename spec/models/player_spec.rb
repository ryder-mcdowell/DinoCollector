require 'rails_helper'

RSpec.describe Player do
    let(:startPosX) {10}
    let(:startPosY) {10}
    let(:player) {Player.new(startPosX, startPosY)}

    it "is not initially in combat" do
        expect(player.in_combat?).to be_falsy
        #expect(player).not_to be_in_combat
    end

    it "can move forward" do
        player.move_forward
        expect(player.x).to eq(startPosX)
        expect(player.y).to eq(startPosY + 1)
    end

    it "can move back" do
        player.move_back
        expect(player.x).to eq(startPosX)
        expect(player.y).to eq(startPosY - 1)
    end

    it "can move left" do
        player.move_left
        expect(player.x).to eq(startPosX - 1)
        expect(player.y).to eq(startPosY)
    end

    it "can move right" do
        player.move_right
        expect(player.x).to eq(startPosX + 1)
        expect(player.y).to eq(startPosY)
    end
end

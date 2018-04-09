require 'rails_helper'

RSpec.describe Player do
    let(:startPosX) {10}
    let(:startPosY) {10}
    let(:player) {Player.new(startPosX, startPosY)}

    it "is not initially in combat" do
        expect(player.in_combat?).to be_falsy
    end

    it "can move forward" do
        player.move_forward
        expect(player.getX).to eq(startPosX)
        expect(player.getY).to eq(startPosY + 1)
    end

    it "can move back" do
        player.move_back
        expect(player.getX).to eq(startPosX)
        expect(player.getY).to eq(startPosY - 1)
    end

    it "can move left" do
        player.move_left
        expect(player.getX).to eq(startPosX - 1)
        expect(player.getY).to eq(startPosY)
    end

    it "can move right" do
        player.move_right
        expect(player.getX).to eq(startPosX + 1)
        expect(player.getY).to eq(startPosY)
    end
end

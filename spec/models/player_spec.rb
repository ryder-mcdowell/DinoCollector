require 'rails_helper'

Start_pos_x = 10
Start_pos_y = 10

RSpec.describe Player do
    let(:player) {Player.new(Start_pos_x, Start_pos_y)}

    it "is not initially in combat" do
        expect(player.in_combat?).to be_falsy
        #expect(player).not_to be_in_combat
    end

    it "can move forward" do
        player.move_forward
        expect(player.x).to eq(Start_pos_x)
        expect(player.y).to eq(Start_pos_y + 1)
    end

    it "can move back" do
        player.move_back
        expect(player.x).to eq(Start_pos_x)
        expect(player.y).to eq(Start_pos_y - 1)
    end

    it "can move left" do
        player.move_left
        expect(player.x).to eq(Start_pos_x - 1)
        expect(player.y).to eq(Start_pos_y)
    end

    it "can move right" do
        player.move_right
        expect(player.x).to eq(Start_pos_x + 1)
        expect(player.y).to eq(Start_pos_y)
    end
end

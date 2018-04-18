require "rails_helper"

RSpec.describe Player do
  let(:player) {Player.new}
  let(:dino) {Dino.new}

  it "doesn't initially have dinos" do
    expect(player.dino_count).to eq(0)
  end

  it "can gain more dinos" do
    expect(player.dinos << dino).to change(player.dino_count).by(1)
  end

end

require "rails_helper"

RSpec.describe Player do
  let(:player) { FactoryBot.build_stubbed(:player) }
  let(:dino) {Dino.new}

  it "doesn't initially have dinos" do
    expect(player.number_of_dinos).to eq(0)
  end

  it "can gain more dinos" do
    player.dinos << dino
    expect(player.number_of_dinos).to eq(1)
  end

end

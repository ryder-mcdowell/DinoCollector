require 'rails_helper'

RSpec.describe Dino do
    let(:startName) {'T Rex'}
    let(:startAttack) {10}
    let(:startDefence) {10}
    let(:startHealth) {10}
    let(:dino) {Dino.new(startName, startAttack, startDefence, startHealth)}

    it "is has a name" do
        expect(dino.name).to be_truthy
    end

    it "has an attack" do
        expect(dino.attack).to be_truthy
    end

    it "has defence" do
        expect(dino.defence).to be_truthy
    end

    it "has health" do
        expect(dino.health).to be_truthy
    end

    it "can add health" do
        dino.addHealth(5)
        expect(dino.health).to eq(startHealth+5)
    end

    it "can remove health" do
        dino.removeHealth(5)
        expect(dino.health).to eq(startHealth-5)
    end
end

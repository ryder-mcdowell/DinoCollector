require 'rails_helper'

RSpec.describe Base do
    let(:startDefence) {10}
    let(:startFood) {10}
    let(:base) {Base.new(startDefence, startFood)}

    it "has defence" do
        expect(base.getDefence).to be_truthy
    end

    it "has food" do
        expect(base.getFood).to be_truthy
    end

    it "can add food" do
        base.addFood(5)
        expect(base.getFood).to eq(startFood+5)
    end

    it "can remove food" do
        base.removeFood(5)
        expect(base.getFood).to eq(startFood-5)
    end

    it "can add defence" do
        base.addDefence(5)
        expect(base.getDefence).to eq(startDefence+5)
    end

    it "can remove defence" do
        base.remove_defence(5)
        expect(base.getDefence).to eq(startDefence-5)
    end

end

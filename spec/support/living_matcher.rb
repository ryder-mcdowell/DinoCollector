RSpec::Matchers.define :be_living do
  match do |actual|
    actual.health > 0
  end
end

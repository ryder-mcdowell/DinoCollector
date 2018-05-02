RSpec::Matchers.define :be_concious do
  match do |actual|
    actual.health > 1
  end
end

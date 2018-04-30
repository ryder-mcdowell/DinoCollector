RSpec::Matchers.define :have_health do |expected|
  match do |actual|
    actual.health == expected
  end
end

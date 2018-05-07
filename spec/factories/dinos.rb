FactoryBot.define do
  factory :dino do
    name "Stegosaurus"
    attack 1
    defence 1
    health 10

    trait :unconcious do
      concious false
    end
  end
end

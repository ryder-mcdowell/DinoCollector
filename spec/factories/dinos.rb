FactoryBot.define do
  factory :dino do
    name "Stegosaurus"
    attack 1
    defence 1
    health 10
  end

  factory :strong_dino do
    name "T-Rex"
    attack 5
    defence 2
    health 10
  end
end

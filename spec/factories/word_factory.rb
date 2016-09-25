FactoryGirl.define do
  factory :word do
    paragraph { Faker::Lorem::paragraph }
    piece 
  end
end

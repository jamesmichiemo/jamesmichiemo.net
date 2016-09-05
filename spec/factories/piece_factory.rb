FactoryGirl.define do
  factory :piece do
    trait :published do
      state 'published'
    end

    trait :unpublished do
      state 'draft'
    end

    trait :with_picture do
      after(:create) do |piece|
        create(:picture, piece: piece)
      end
    end
  end
end


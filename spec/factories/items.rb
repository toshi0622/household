FactoryBot.define do
  factory :item do
    item_name         {"名前"}
    item_category_id  {2}
    price             {3000}
    regret_id         {2}
    memo              {"ご自由に"}
    calendar          {"1991-10-10"}
    # association :user
    after(:build) do |item|
      item.image.attach(io: File.open('spec/fixtures/test_image.png'), filename: 'test_image.png', content_type: 'image/png')
    end
  end
end
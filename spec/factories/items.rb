FactoryBot.define do
  factory :item do
    image                      {}
    name                       { '名前' }
    text                       { '説明' }
    status_id                  { 2 }
    delivery_charge_bearer_id  { 2 }
    prefecture_id              { 2 }
    delivery_days_id           { 2 }
    category_id                { 2 }
    price                      { '500' }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end

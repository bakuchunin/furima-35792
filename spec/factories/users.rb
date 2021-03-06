FactoryBot.define do
  factory :user do
    nickname              { 'test' }
    email                 { Faker::Internet.free_email }
    password              { Faker::Lorem.characters(min_alpha: 1, min_numric: 1, min_length: 6) }
    password_confirmation { password }
    last_name           { '山田' }
    last_name_kana      { 'ヤマダ' }
    first_name            { '太郎' }
    first_name_kana       { 'タロウ' }
    birth_date            { '2000-01-01' }
  end
end

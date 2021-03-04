FactoryBot.define do
  factory :user do
    first_name { "Tun" }
    last_name  { "Khine" }
    email      { "tun_#{SecureRandom.alphanumeric(4)}@beefingers.com" }
    password   { "123123123" }
  end
end
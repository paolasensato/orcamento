FactoryBot.define do
  factory :orcamento do
    nome_cliente { Faker::Name.name }
    data { Faker::Date.in_date_period.strftime('%Y-%m-%d') }
  end
end

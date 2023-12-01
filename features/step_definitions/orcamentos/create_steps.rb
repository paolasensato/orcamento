Dado('informações válidas para o cadastro de orçamento') do
  @body = {
    nome_cliente: Faker::Name.name,
    data: Faker::Date.in_date_period.strftime('%Y-%m-%d')
  }
end

Quando('ele clica no botão para cadastrar o orçamento') do
  @response = page.driver.post('/api/v1/orcamentos', @body)
  @response_body = JSON.parse(@response.body).deep_symbolize_keys
end

Então('o orçamento deve ser cadastrado com sucesso') do
  expect(@response.status).to eq(201)
end

Dado('informações inválidas para o cadastro de um orçamento') do
  @body = {
    nome_cliente: Faker::Name.name
  }
end

Então('o orçamento não deve ser cadastrado no sistema') do
  expect(@response.status).to eq(422)
end

Dado('informações inválidas para o cadastro de um orçamento com produtos') do
  @body = {
    nome_cliente: Faker::Name.name,
    data: Faker::Date.in_date_period.strftime('%Y-%m-%d'),
    produtos: [
      {
        valor: Faker::Number.positive
      }
    ]
  }
end

Dado('informações válidas para o cadastro de um orçamento com produtos') do
  @body = {
    nome_cliente: Faker::Name.name,
    data: Faker::Date.in_date_period.strftime('%Y-%m-%d'),
    produtos: [
      {
        nome: Faker::Book.title,
        valor: Faker::Number.positive
      }
    ]
  }
end

Então('deve dar erro') do
  expect(@response.status).to eq(422)
  expect(@response_body[:errors].present?).to be_truthy
end

Então('os produtos devem ser retornados na resposta') do
  expect(@response_body[:produtos_orcamento].length).to eq(1)
  expect(@response_body[:produtos_orcamento][0][:nome]).to eq(@body[:produtos][0][:nome])
end

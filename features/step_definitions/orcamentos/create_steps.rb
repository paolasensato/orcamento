Dado('informações válidas para o cadastro de orçamento') do
  @body = {
    nome_cliente: Faker::Name.name,
    data: Faker::Date.in_date_period.strftime('%Y-%m-%d')
  }
end

Quando('ele clica no botão para cadastrar o orçamento') do
  @response = page.driver.post('/api/v1/orcamentos', @body)
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

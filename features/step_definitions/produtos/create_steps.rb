Dado('um orcamento previamente cadastrado') do
  @orcamento = FactoryBot.create(:orcamento)
  @orcamento_id = @orcamento.id
end

Dado('um orcamento não cadastrado') do
  @orcamento_id =  Faker::Number
end

Dado('informações válidas para o cadastro de produto do orçamento') do
  @body = {
    nome: Faker::Book,
    valor: Faker::Number.positive
  }
end

Dado('informações inválidas para o cadastro de um produto do orçamento') do
  @body = {}
end

Quando('ele clica no botão para cadastrar o produto do orçamento') do
  @response = page.driver.post("/api/v1/orcamentos/#{@orcamento_id}/produto_orcamentos", @body)
end

Então('o produto do orçamento deve ser cadastrado com sucesso') do
  expect(@response.status).to eq(201)
end

Então('o produto do orçamento não deve ser cadastrado no sistema') do
  expect(@response.status).to eq(422)
end

Então('deve retornar erro') do
  expect(@response.status).to eq(404)
end

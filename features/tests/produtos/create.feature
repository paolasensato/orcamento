# language: pt

Funcionalidade: Cadastro de Produto do Orcamento
  Como um usuário eu desejo cadastrar produto do um orçamento

  Cenário: Usuario tenta fazer o cadastro de um produto do orçamento com informações válidas 
    então deve ser cadastrado com sucesso
    Dado um orcamento previamente cadastrado
    Dado informações válidas para o cadastro de produto do orçamento
    Quando ele clica no botão para cadastrar o produto do orçamento
    Então o produto do orçamento deve ser cadastrado com sucesso

  Cenário: Usuario tenta fazer o cadastro de um produto do orçamento com informações inválidas
    então não deve ser cadastrado
    Dado um orcamento previamente cadastrado
    Dado informações inválidas para o cadastro de um produto do orçamento
    Quando ele clica no botão para cadastrar o produto do orçamento
    Então o produto do orçamento não deve ser cadastrado no sistema

  Cenário: Usuario tenta fazer o cadastro de um produto do orçamento com informações inválidas
    então não deve ser cadastrado
    Dado um orcamento não cadastrado
    Dado informações válidas para o cadastro de produto do orçamento
    Quando ele clica no botão para cadastrar o produto do orçamento
    Então deve retornar erro

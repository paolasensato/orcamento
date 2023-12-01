# language: pt

Funcionalidade: Cadastro de Orçamento
  Como um usuário eu desejo cadastrar um orçamento

  Cenário: Usuario tenta fazer o cadastro de um orçamento com informações válidas 
    então deve ser cadastrado com sucesso
    Dado informações válidas para o cadastro de orçamento
    Quando ele clica no botão para cadastrar o orçamento
    Então o orçamento deve ser cadastrado com sucesso

  Cenário: Usuario tenta fazer o cadastro de um orçamento com informações inválidas
    então não deve ser cadastrado
    Dado informações inválidas para o cadastro de um orçamento
    Quando ele clica no botão para cadastrar o orçamento
    Então o orçamento não deve ser cadastrado no sistema

  Cenário: Usuario tenta fazer o cadastro de um orçamento com produtos e informações inválidas
    então não deve ser cadastrado
    Dado informações inválidas para o cadastro de um orçamento com produtos
    Quando ele clica no botão para cadastrar o orçamento
    Então deve dar erro

  Cenário: Usuario tenta fazer o cadastro de um orçamento com produtos e informações válidas
    então deve ser cadastrado
    Dado informações válidas para o cadastro de um orçamento com produtos
    Quando ele clica no botão para cadastrar o orçamento
    Então o orçamento deve ser cadastrado com sucesso
    E os produtos devem ser retornados na resposta

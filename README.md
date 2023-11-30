# Setup do Projeto

## 1. Clone

Acesse o terminal e faça o download do repositório com o seguinte comando:

```bas
git clone https://github.com/paolasensato/orcamento-api.git
```

## 2. Criação e Configuração da database `config/database.yml`

É necessário criar o arquivo de configuração do banco de dados executando no terminal o comando abaixo:

```
cp config/database.example.yml config/database.yml
```

Obs: Caso a senha do seu mysql seja diferente de `root` altere o password no arquivo gerado.

## 3. Instalar gems (libs)

Aqui eu uso o `rvm` para gerenciar as minhas versões do ruby.

O `bundle` ira instalar todas as gems que foram definidas no Gemfile.

```
rvm use
```

```
rvm install 3.2.0
```

```
bundle install
```

## 4. Banco - criação e migrações

Execute no terminal o seguinte comando:
```
rails db:create db:migrate
```

## 5. Testes

Para realizar os testes na api execute o comando abaixo dentro da pasta do projeto:

```
cucumber
```

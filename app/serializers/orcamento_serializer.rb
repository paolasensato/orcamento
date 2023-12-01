class OrcamentoSerializer < ActiveModel::Serializer
  attributes :id, :nome_cliente, :data, :produtos_orcamento
  has_many :produtos_orcamento
end

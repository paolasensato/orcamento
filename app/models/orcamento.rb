class Orcamento < ApplicationRecord
  has_many :produtos_orcamento

  validates :nome_cliente, :data, presence: { message: 'não pode estar em branco' }
end

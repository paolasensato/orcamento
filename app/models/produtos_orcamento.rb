class ProdutosOrcamento < ApplicationRecord
  belongs_to :orcamento

  validates :nome, :valor, presence: { message: 'não pode estar em branco' }
end

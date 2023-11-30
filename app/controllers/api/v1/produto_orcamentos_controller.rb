class Api::V1::ProdutoOrcamentosController < ApplicationController
  before_action :find_orcamento

  def create
    produto_orcamento = @orcamento.produtos_orcamento.create(produto_orcamento_params)

    if produto_orcamento.persisted?
      render json: produto_orcamento, status: :created
    else
      render json: produto_orcamento.errors.full_messages, status: :unprocessable_entity
    end
  end

  private

  def find_orcamento
    @orcamento = Orcamento.find_by(id: params[:orcamento_id])
    head :not_found unless @orcamento.present?
  end

  def produto_orcamento_params
    params.permit(:nome, :valor)
  end
end

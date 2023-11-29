class Api::V1::OrcamentosController < ApplicationController
  def create
    orcamento = Orcamento.create(orcamentos_params)
    return render json: orcamento, status: :created if orcamento.persisted?

    render json: orcamento.errors.full_messages, status: :unprocessable_entity
  end

  def index
    render json: Orcamento.all, status: :ok
  end

  private

  def orcamentos_params
    params.permit(:nome_cliente, :data)
  end
end

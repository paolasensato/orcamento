class Api::V1::OrcamentosController < ApplicationController
  def create
    orcamento = Orcamento.new(orcamentos_params)

    return render json: orcamento, status: :created if params[:produtos].blank? && orcamento.save

    begin
      ActiveRecord::Base.transaction do
        orcamento.save!
        produtos_params.each do |produto_param|
          orcamento.produtos_orcamento.create!(produto_param.permit(:nome, :valor))
        end
      end
      render json: orcamento, status: :created
    rescue ActiveRecord::RecordInvalid => e
      render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def index
    render json: Orcamento.all, status: :ok
  end

  private

  def orcamentos_params
    params.permit(:nome_cliente, :data)
  end

  def produtos_params
    params.require(:produtos)
  end
end

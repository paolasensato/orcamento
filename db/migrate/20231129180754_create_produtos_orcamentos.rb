class CreateProdutosOrcamentos < ActiveRecord::Migration[7.0]
  def change
    create_table :produtos_orcamentos do |t|
      t.references :orcamento, null: false, foreign_key: true
      t.string :nome, null: false, :limit => 45 
      t.string :valor, null: false, :limit => 45 

      t.timestamps
    end
  end
end

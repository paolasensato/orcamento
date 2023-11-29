class CreateOrcamentos < ActiveRecord::Migration[7.0]
  def change
    create_table :orcamentos do |t|
      t.string :nome_cliente, null: false, :limit => 45
      t.date :data, null: false

      t.timestamps
    end
  end
end

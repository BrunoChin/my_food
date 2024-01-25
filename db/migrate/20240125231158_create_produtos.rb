class CreateProdutos < ActiveRecord::Migration[7.1]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :tipo
      t.text :sabores

      t.timestamps
    end
  end
end

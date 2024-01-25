class CreateEntregas < ActiveRecord::Migration[7.1]
  def change
    create_table :entregas do |t|
      t.references :pedido, null: false, foreign_key: true
      t.text :endereco

      t.timestamps
    end
  end
end

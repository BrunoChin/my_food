class CreatePedidos < ActiveRecord::Migration[7.1]
  def change
    create_table :pedidos do |t|
      t.references :produto, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :quantidade
      t.decimal :valor
      t.boolean :entrega

      t.timestamps
    end
  end
end

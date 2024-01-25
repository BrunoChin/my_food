class Pedido < ApplicationRecord
  belongs_to :produto
  belongs_to :user
end

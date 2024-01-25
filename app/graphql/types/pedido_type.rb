# frozen_string_literal: true

module Types
  class PedidoType < Types::BaseObject
    field :id, ID, null: false
    field :produto_id, Integer, null: false
    field :user_id, Integer, null: false
    field :quantidade, Integer
    field :valor, Float
    field :entrega, Boolean
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end

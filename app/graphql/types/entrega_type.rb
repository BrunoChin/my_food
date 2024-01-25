# frozen_string_literal: true

module Types
  class EntregaType < Types::BaseObject
    field :id, ID, null: false
    field :pedido_id, Integer, null: false
    field :endereco, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end

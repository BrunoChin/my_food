# frozen_string_literal: true

module Types
  class ProdutoType < Types::BaseObject
    field :id, ID, null: false
    field :nome, String
    field :tipo, String
    field :sabores, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end

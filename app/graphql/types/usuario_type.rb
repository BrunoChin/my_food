# frozen_string_literal: true

module Types
  class UsuarioType < Types::BaseObject
    field :id, ID, null: false
    field :nome, String
    field :email, String
    field :telefone, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end

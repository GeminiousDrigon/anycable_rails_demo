# frozen_string_literal: true

# Virtual model to represent current user in the app
class User
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :name, :string
  attribute :id, :string

  class << self
    def generate(name)
      new(name: name, id: Nanoid.generate(size: 5))
    end
  end
end
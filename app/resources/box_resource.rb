class BoxResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :user_id, :integer
  attribute :category_id, :integer
  attribute :size, :string

  # Direct associations

  belongs_to :category

  has_many   :items

  belongs_to :user

  # Indirect associations
end

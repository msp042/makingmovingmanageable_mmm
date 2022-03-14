class ItemResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :box_id, :integer
  attribute :title, :string

  # Direct associations

  # Indirect associations

end

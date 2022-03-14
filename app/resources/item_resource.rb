class ItemResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :box_id, :integer
  attribute :title, :string

  # Direct associations

  belongs_to :box

  # Indirect associations

  has_one    :user

  filter :user_id, :integer do
    eq do |scope, value|
      scope.eager_load(:user).where(boxes: { user_id: value })
    end
  end
end

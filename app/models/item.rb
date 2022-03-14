class Item < ApplicationRecord
  # Direct associations

  belongs_to :box

  # Indirect associations

  has_one    :user,
             through: :box,
             source: :user

  # Validations

  # Scopes

  def to_s
    box.to_s
  end
end

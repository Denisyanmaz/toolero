class Tool < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :name, presence: true
  validates :tool_type, presence: true
  validates :price, presence: true
  validates :availability, presence: true
  validates :description, presence: true, length: { minimum: 20, maximum: 200 }
end

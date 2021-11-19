class Tool < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_one_attached :photo

  include PgSearch::Model

  pg_search_scope :search_by_name_and_tool_type,
    against: [ :name, :tool_type ],
    using: {
      tsearch: { prefix: true }
  }

  validates :name, presence: true
  validates :tool_type, presence: true
  validates :price, presence: true
  validates :availability, presence: true
  validates :description, presence: true, length: { minimum: 20, maximum: 200 }

  def reservations?(start_date, end_date)
    reservations.where(
      "(start_date <= :start_date AND end_date >= :start_date) OR \
      (end_date >= :end_date AND start_date <= :end_date) OR \
      (start_date >= :start_date AND end_date <= :end_date)",
      start_date: start_date, end_date: end_date
    ).any?
  end
end

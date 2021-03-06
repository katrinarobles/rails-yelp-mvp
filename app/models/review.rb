class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates_numericality_of :rating, presence: true,
    :only_integer =>             true,
    :greater_than_or_equal_to => 0,
    :less_than_or_equal_to =>    5,
    :message =>                  'can only be number between 0 and 5.'
  # ORRRR validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
  def star_rating
  end
end

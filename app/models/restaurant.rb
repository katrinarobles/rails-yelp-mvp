class Restaurant < ApplicationRecord
  CATEGORY = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORY }
  def rating_average
      sum = 0
      self.reviews.each do |review|
        sum += review.rating
      end
      unless sum == 0
        sum / reviews.length
      end
    end
end

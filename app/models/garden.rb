class Garden < ApplicationRecord
  has_many :plants_gardens

  CATEGORY = ['window ledge', 'balcony', 'terrace']
  EXPOSURE = ['N', 'S', 'W', 'E']

  validates :category, inclusion: { in: CATEGORY }
  validates :exposure, inclusion: { in: EXPOSURE }
  validates :length, presence: true
  validates :width, presence: true
end

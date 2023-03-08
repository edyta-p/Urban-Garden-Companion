class Plant < ApplicationRecord
  has_many :plants_gardens

  CLIMATE = ['Temperate', 'Cold', 'Warm']
  EXPOSURE = ['N', 'S', 'W', 'E']
  WATERING = [1, 2, 3]
  CATEGORY = ['Leaf plants', 'Flowers', 'Aromatics', 'Vegetables', 'Fruits']

  validates :name, presence: true
  validates :description, presence: true
  validates :climate, presence: true, inclusion: { in: CLIMATE }
  validates :exposure, presence: true, inclusion: { in: EXPOSURE }
  validates :watering, presence: true, inclusion: { in: WATERING }

end

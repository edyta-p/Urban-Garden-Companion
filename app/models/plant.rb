class Plant < ApplicationRecord
  has_many :plants_gardens

  PLANT_SIZE = 20

  CLIMATE = ['Temperate', 'Cold', 'Warm']
  EXPOSURE = ['N', 'S', 'W', 'E']
  WATERING = [1, 2, 3]
  CATEGORY = ['Leaf plants', 'Flowers', 'Aromatics', 'Vegetables', 'Fruits']
  IMAGE_PLANT_CATEGORY = {
    'Leaf plants': 'plantes/leaf plant_yucca.png',
    'Flowers': 'plantes/flower_rose.png',
    'Aromatics': 'plantes/aromatic_basil.png',
    'Vegetables': 'plantes/vegetable_zucchini.png',
    'Fruits': 'plantes/fruit_strawberry.png'
  }

  validates :name, presence: true
  validates :description, presence: true
  validates :climate, presence: true, inclusion: { in: CLIMATE }
  validates :exposure, presence: true, inclusion: { in: EXPOSURE }
  validates :watering, presence: true, inclusion: { in: WATERING }
end

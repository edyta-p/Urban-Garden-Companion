class Garden < ApplicationRecord
  has_many :plants_gardens
  has_many :plants, through: :plants_gardens

  CATEGORY = ['windowsill', 'balcony', 'terrace']
  IMAGE_CATEGORY = {
    'windowsill': 'design/windowsill.png',
    'balcony': 'design/balcony.png',
    'terrace': 'design/terrace.png'
  }
  EXPOSURE = ['N', 'S', 'W', 'E']
  CLIMATE = ["Cold", "Temperate", "Warm"]

  IMAGE_CLIMATE = {
    "Cold": 'design/cold.png',
    "Temperate": 'design/climate.png',
    "Warm": 'design/global-warming.png'
  }

  validates :category, inclusion: { in: CATEGORY }, if: :active_or_category?
  validates :exposure, inclusion: { in: EXPOSURE }, if: :active_or_exposure?
  validates :length, presence: true, if: :active_or_length?
  validates :width, presence: true, if: :active_or_width?
  validates :plant_categories, presence: true, if: :active_or_plants?

  def active?
    status == 'active'
  end

  def active_or_category?
    status.include?('category') || active?
  end

  def active_or_length?
    status.include?('length') || active?
  end

  def active_or_width?
    status.include?('width') || active?
  end

  def active_or_exposure?
    status.include?('exposure') || active?
  end

  def active_or_plants?
    status.include?('plant_categories') || active?
  end

end

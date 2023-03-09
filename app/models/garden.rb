class Garden < ApplicationRecord
  has_many :plants_gardens

  CATEGORY = ['window ledge', 'balcony', 'terrace']
  IMAGE_CATEGORY = {
    'window ledge': 'https://www.minotti.com/media/immagini/27427_z_MINOTTI_TERRACE_001.jpg',
    'balcony': 'https://www.minotti.com/media/immagini/27427_z_MINOTTI_TERRACE_001.jpg',
    'terrace': 'https://www.minotti.com/media/immagini/27427_z_MINOTTI_TERRACE_001.jpg'
  }

  EXPOSURE = ['N', 'S', 'W', 'E']

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

  # def plant_categories
  #   Plant::CATEGORY
  # end
end

class Garden < ApplicationRecord
  has_many :plants_gardens

  CATEGORY = ['window ledge', 'balcony', 'terrace']
  EXPOSURE = ['N', 'S', 'W', 'E']

  validates :category, inclusion: { in: CATEGORY }, if: :active_or_category?
  validates :exposure, inclusion: { in: EXPOSURE }, if: :active_or_exposure?
  validates :length, presence: true, if: :active_or_category?
  validates :width, presence: true, if: :active_or_category?

  def active?
    status == 'active'
  end

  def active_or_category?
    (status.include?('category') && status.include?('length') && status.include?('width')) || active?
  end

  def active_or_exposure?
    status.include?('exposure') || active?
  end


end

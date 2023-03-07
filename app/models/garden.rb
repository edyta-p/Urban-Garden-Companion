class Garden < ApplicationRecord
  has_many :plants_gardens

  TYPE = ['window ledge', 'balcony', 'terrace']
  EXPOSURE = ['N', 'S', 'W', 'E']

  validates :type, inclusion: { in: TYPE }
  validates :exposure, inclusion: { in: EXPOSURE }
end

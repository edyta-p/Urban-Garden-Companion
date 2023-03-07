class Garden < ApplicationRecord
  TYPE = ['window ledge', 'balcony', 'terrace']
  EXPOSURE = ['N', 'S', 'W', 'E']

  validates :type, inclusion: { in: TYPE }
  validates :exposure, inclusion: { in: EXPOSURE }
end

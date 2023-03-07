class PlantsGarden < ApplicationRecord
  belongs_to :plant
  belongs_to :garden

  validates :group, presence: true
end

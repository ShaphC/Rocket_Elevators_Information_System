class Building < ApplicationRecord
  belongs_to :customer
  has_many :buildingDetail
  belongs_to :adress
end

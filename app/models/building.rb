class Building < ApplicationRecord
  belongs_to :customer
  has_many :buildingDetail
  # has_one :adress
end

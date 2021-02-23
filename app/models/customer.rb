class Customer < ApplicationRecord
  belongs_to :user
  has_many :building
  belongs_to :adress
end

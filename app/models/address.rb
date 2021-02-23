class Address < ApplicationRecord
  has_one :Building
  has_one :customer
end

class Employee < ApplicationRecord
    belongs_to :user
    has_many :batterie, dependent: :destroy
end

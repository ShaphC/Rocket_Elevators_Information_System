class Batterie < ApplicationRecord
    has_many :column, dependent: :destroy
    belongs_to :employee
    belongs_to :building
end

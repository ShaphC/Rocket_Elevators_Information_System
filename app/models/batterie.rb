class Batterie < ApplicationRecord
    has_many :column, dependent: :destroy
    belongs_to :building
end

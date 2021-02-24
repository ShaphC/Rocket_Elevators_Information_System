class Batterie < ApplicationRecord
    has_many :column
    belongs_to :Building
end
end

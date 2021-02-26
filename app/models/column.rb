class Column < ApplicationRecord
    belongs_to :batterie
    has_many :elevator, dependent: :destroy

end

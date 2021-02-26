class Column < ApplicationRecord
    belongs_to :batterie #,foreign_key: "battery_id"
    has_many :elevator, dependent: :destroy

end

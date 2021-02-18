class Quote < ApplicationRecord
    self.table_name = "quotess"
    has_one  :user
end

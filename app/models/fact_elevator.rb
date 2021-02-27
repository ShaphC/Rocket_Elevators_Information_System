class FactElevator < ApplicationRecord
    include RailsAdminCharts
    belongs_to :dim_customer
end

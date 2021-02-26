class DimCustomer < PostgresRecord
    has_many :fact_elevator, dependent: :destroy
end

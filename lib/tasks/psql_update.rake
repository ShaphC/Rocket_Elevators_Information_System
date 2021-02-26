namespace :update do
      task seed_psql: :environment do
        psqlconn = PG::Connection.open(:dbname => 'dwh_scharles', :host => 'codeboxx-postgresql.cq6zrczewpu2.us-east-1.rds.amazonaws.com', :user => 'codeboxx', :password => 'Codeboxx1!')

        Quote.all.each do |quote|
         psqlconn.exec_params("INSERT INTO fact_quotes VALUES (#{quote.id}, #{quote.id}, '2021-02-25 16:35:02', 'Placeholder', '#{quote.email}', #{quote.numElev}, '2021-02-25 16:35:02', '2021-02-25 16:35:02')")      
        end
    
        Lead.all.each do |lead|
           company_name = "#{lead.company_name}".gsub(/'/) {|s| "''"}
           project_name = "#{lead.project_name}".gsub(/'/) {|s| "''"}
           psqlconn.exec_params("INSERT INTO fact_contacts VALUES ( #{lead.id}, #{lead.id}, '#{lead.created_at}', '#{company_name}', '#{lead.email}', '#{project_name}', '#{lead.created_at}', '#{lead.created_at}')")
        end
    
        Elevator.all.each do |elevator|
           psqlconn.exec_params("INSERT INTO fact_elevators VALUES ( #{elevator.id}, '#{elevator.Serial_number}', '#{elevator.Date_of_commissioning}', #{elevator.id}, #{elevator.id}, 'Placeholder', '#{elevator.created_at}', '#{elevator.created_at}')")
        end
    
         Customer.all.each do |customer|
            company_name = "#{customer.company_name}".gsub(/'/) {|s| "''"}
            full_name = "#{customer.full_name_of_the_company_contact}".gsub(/'/) {|s| "''"}
            psqlconn.exec_params("UPDATE fact_quotes SET company_name = '#{company_name}' WHERE id = #{customer.id}")
            psqlconn.exec_params("UPDATE fact_quotes SET creation_date = '#{customer.created_at}' WHERE id = #{customer.id}")
            psqlconn.exec_params("UPDATE fact_quotes SET created_at = '#{customer.created_at}' WHERE id = #{customer.id}")
            psqlconn.exec_params("UPDATE fact_quotes SET updated_at = '#{customer.created_at}' WHERE id = #{customer.id}")

            psqlconn.exec_params("UPDATE fact_elevators SET customer_id = #{customer.id} WHERE id = #{customer.id}")
            psqlconn.exec_params("INSERT INTO dim_customers VALUES ( #{customer.id}, '#{customer.created_at}', '#{company_name}', '#{full_name}', '#{customer.email_of_the_company_contact}', 3, 'Placeholder', '#{customer.created_at}', '#{customer.created_at}')")
         end

         Quote.all.each do |quote|
            psqlconn.exec_params("UPDATE dim_customers SET nb_elevators = #{quote.numElev} WHERE id = #{quote.id}")
         end
    
         Building.all.each do |building|
            psqlconn.exec_params("UPDATE fact_elevators SET building_id = #{building.id} WHERE id = #{building.id}")
         end
    
         Address.all.each do |address|
           address_city = "#{address.city}".gsub(/'/) {|s| "''"}
           psqlconn.exec_params("UPDATE fact_elevators SET building_city = '#{address_city}' WHERE id = #{address.id}")
           psqlconn.exec_params("UPDATE dim_customers SET customer_city = '#{address_city}' WHERE id = #{address.id}")
          end
      end
    end
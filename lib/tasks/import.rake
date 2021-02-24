require 'json'

file = File.read('address.json')

data_hash = JSON.parse(file)



# p randomAddress

namespace :import do
    task import_task: :environment do

        users = []
        i = User.count + 1
        5.times do
            users << User.new(
                id: i,
                email: Faker::Internet.unique.safe_email, 
                password: Faker::Internet.password(min_length: 6, max_length: 15)
            )
            i += 1
        end
        # User.import! users
        # p users #print users array

        leads = []
        i = Lead.count + 1
        5.times do
            leads << Lead.new(
                id: i,
                full_name_of_the_contact: Faker::Name.name,
                company_name: Faker::Company.name,
                email: Faker::Internet.unique.safe_email, 
                phone: Faker::PhoneNumber.phone_number,
                project_name: Faker::Lorem.sentence(word_count: 3),
                project_description: Faker::Lorem.sentence(word_count: 10),
                department_in_charge_of_the_elevators: Faker::Lorem.sentence(word_count: 2),
                message: Faker::Lorem.sentence(word_count: 20),
                date_of_the_contact: Faker::Date.between(from: 3.years.ago, to: Date.today)
            )
            i += 1
        end
        Lead.import! leads
        # p leads

        customer_addresses = []
        address_type = ["Residential", "Commercial", "Corporate", "Hybrid"]
        status = ["Active", "Inactive"]
        i = Address.count + 1
        users.each do #users.each
            random_address = data_hash['addresses'][Faker::Number.between(from: 0, to: 99)]
            customer_addresses << Address.new(
                id: i,
                type_of_address: address_type[Faker::Number.between(from: 0, to: 3)],
                status: status[Faker::Number.between(from: 0, to: 1)],
                entity: "Customer",
                number_and_street: random_address['address1'],
                suite_or_apartment: random_address['address2'],
                city: random_address['city'],
                postal_code: random_address['postalCode'],
                country: random_address['state'],
                notes: "No current notes for this address."
            )
            i += 1
        end
        # Address.import! customer_addresses
        # p customer_addresses #Print address array

        # p ""
        # p ""

        building_addresses = []
        i = Address.count + 1 #MAY NEED TO BE CHANGED
        x = 0
        customer_addresses.each do
            building_addresses << Address.new(
                id: i,
                type_of_address: customer_addresses[x].type_of_address,
                status: customer_addresses[x].status,
                entity: "Building",
                number_and_street: customer_addresses[x].number_and_street,
                suite_or_apartment: customer_addresses[x].suite_or_apartment,
                city: customer_addresses[x].city,
                postal_code: customer_addresses[x].postal_code,
                country: customer_addresses[x].country,
                notes: "No current notes for this address."
            )
            i += 1
            x += 1
        end
        # Address.import! building_addresses
        # p building_addresses #Print address array

        # p ""
        # p ""


        customers = []
        i = Customer.count + 1
        x = 0
        users.each do
            customers << Customer.new(
                id: i,
                company_name: Faker::Company.name,
                full_name_of_the_company_contact: Faker::Name.name,
                company_contact_phone: Faker::PhoneNumber.phone_number,
                email_of_the_company_contact: users[x].email,
                company_description: Faker::Company.industry,
                full_name_of_service_technical_authority: Faker::Company.name, #is random company good enough?
                technical_authority_phone_for_Service: Faker::PhoneNumber.phone_number,
                technical_manager_email_for_service: Faker::Internet.unique.safe_email,
                addresses_id: customer_addresses[x].id, #might need rephrasing
                user_id: users[x].id #might need rephrasing
            )
            i += 1
            x += 1
        end
        # Customer.import! customers
        # p customers

        # p ""
        # p ""

        buildings = []
        i = Building.count + 1
        x = 0
        customers.each do
            buildings << Building.new(
                id: i,
                email_of_the_administrator_of_the_building: Faker::Internet.unique.safe_email,
                phone_number_of_the_building_administrator: Faker::PhoneNumber.phone_number,
                full_name_of_the_technical_contact_for_the_building: Faker::Name.name,
                echnical_contact_email_for_the_building: Faker::Internet.unique.safe_email,
                rechnical_contact_phone_for_the_building: Faker::PhoneNumber.phone_number,
                addresses_id: building_addresses[x].id,
                customer_id: customers[x].id,
        )
        i += 1
        x += 1
        end
        # Building.import! buildings
        # p buildings

        batteries = []
        i = Batterie.count + 1
        x = 0
        buildings.each do
            batteries << Batterie.new(
                id: i,
                Type: "hybrid", #not sure how to define b/w the 4 avaliable, might have to be hardcoded
                Status: 'online',
                EmployeeId: Faker::Number.between(from: 1, to: Employee.count), #Must be linked to employee table
                Date_of_commissioning: Faker::Date.between(from: 3.years.ago, to: Date.today),
                Date_of_last_inspection: Faker::Date.between(from: 3.years.ago, to: Date.today), #Fix at end. make sure date is after comission date
                Certificate_of_Operations: Faker::Alphanumeric.alphanumeric(number: 12),
                Information: "Currently online, no issues.",
                Notes: "No current notes.",
                # building_id: buildings[x].id
            )
            i += 1
            x += 1
        end
        # Batterie.import! batteries
        # p batteries #Prints batterie array
        
        columns = []
        column_type = ["Residential", "Commercial", "Corporate"]
        i = Column.count + 1
        x = 0
        batteries.each do
            columns << Column.new(
                id: i,
                Type: column_type[Faker::Number.between(from: 0, to: 2)],
                Number_of_floors: Faker::Number.between(from: 0, to: 60),
                Status: "Online",
                Information: "Currently online, no issues.",
                Notes: "No current notes.",
                batterie_id: batteries[x].id
        )
        i += 1
        x += 1
        end
        # Column.import! columns
        # p columns
        
        elevators = []
        elevator_model = ["Standard", "Premium", "Excelium"]
        i = Elevator.count + 1
        x = 0
        columns.each do
            elevators << Elevator.new(
                id: i,
                Serial_number: Faker::Alphanumeric.alphanumeric(number: 10),
                Model: elevator_model[Faker::Number.between(from: 0, to: 2)],
                Type: columns[x].Type,
                Status: "Online",
                Date_of_commissioning: Faker::Date.between(from: 3.years.ago, to: Date.today),
                Date_of_last_inspection: Faker::Date.between(from: 3.years.ago, to: Date.today), #Fix at end. make sure date is after comission date
                Certificate_of_inspection: Faker::Alphanumeric.alphanumeric(number: 12),
                Information: "Currently online, no issues.",
                Notes: "No current notes.",
                column_id: columns[x].id
        )
        i += 1
        x += 1
        end
        # Elevator.import! elevators
        # p elevators


    end
end





        # buildings = []
        # i = Building.count + 1
        # x = 0
        # customers.each do
        #     buildings << Building.new(
        #         id: i,
        # )
        # i += 1
        # x += 1
        # end
        # Building.import! buildings
        # p buildings






# NO LONGER USED, STAYING FOR REFERENCE IF NEEDED

        #REFERENCE FOR USING VALUES FROM ANOTHER TABLE
        
        # employees = []
        # i = 0
        # users.each do
        #     if users[i].admin
        #         employees << Employee.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, title: Faker::Job.title, email: users[i].email, user_id: users[i].id) 
        #     end
        #     i += 1
        # end
        # Employee.import! employees
        # p employees #print users array

        #FOR USE WHEN IMPORTING WITH CSV

        # import_users = File.join Rails.root, "import_users.csv"
        # i = User.count + 1
        # CSV.foreach(import_users, headers: true) do |row|
        #     users << User.new(id: i, email: row[0], password: row[1], admin: row[2])
        #     i += 1
        # end

        
        # import_employees = File.join Rails.root, "import_employees.csv"
        # CSV.foreach(import_employees, headers: true) do |row|
        #     if users[i].admin
        #         employees << Employee.new(first_name: row[0], last_name: row[1], title: row[2], email: users[i].email, user_id: users[i].id) 
        #     end
        #     i += 1
        # end


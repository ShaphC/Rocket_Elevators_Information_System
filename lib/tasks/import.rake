require 'csv'

namespace :import do
    task import_task: :environment do
        # users = []
        # i = User.count + 1
        # 300.times do
        #     users << User.new(
        #         id: i,
        #         email: Faker::Internet.unique.safe_email, 
        #         password: Faker::Internet.password(min_length: 6, max_length: 15)
        #     )
        #     i += 1
        # end
        # User.import! users
        # p users #print users array

        # addresses = []
        # i = Address.count + 1
        # const address = require('./rrad/addresses-us-all.min.json').addresses
        # customer/building.count do
        #     const randomAddress = address[Math.floor(Math.random() * addresses.length)]
        #     addresses << Address.new(
        #         id: i,
        #         type_of_address: ,
        #         status: ,
        #         entity: , #building or customer
        #         number_and_street: randomAddress.address1,
        #         suite_or_apartment: randomAddress.address2,
        #         city: randomAddress.city,
        #         postal_code: randomAddress.postalCode,
        #         country: randomAddress.state,
        #         notes: "No current notes for this address."
        #     )
        # end


        customers = []
        i = Customer.count + 1
        users.each do
            customers << Customer.new(
                id: i,
                company_name: Faker::Company.name,
                full_name_of_the_company_contact: Faker::Name.name,
                company_contact_phone: Faker::PhoneNumber.phone_number,
                email_of_the_company_contact: users.email,
                company_description: Faker::Company.industry,
                full_name_of_service_technical_authority: Faker::Company.name, #is random company good enough?
                technical_authority_phone_for_service: Faker::PhoneNumber.phone_number,
                technical_manager_email_for_service: Faker::Internet.unique.safe_email,
                addresses_id: address[i].id, #might need rephrasing
                user_id: user.id #might need rephrasing
            )
            i += 1
        end
        # Customer.import! customers
        p customers

        batteries = []
        i = Batterie.count + 1
        5.times do
            batteries << Batterie.new(
                id: i,
                Type: "hybrid", #not sure how to define b/w the 4 avaliable, might have to be hardcoded
                Status: 'online',
                EmployeeId: Faker::Number.between(from: 1, to: Employee.count), #Must be linked to employee table
                Date_of_commissioning: Faker::Date.between(from: 3.years.ago, to: Date.today),
                Date_of_last_inspection: Faker::Date.between(from: 3.years.ago, to: Date.today),
                Certificate_of_Operations: Faker::Alphanumeric.alpha(number: 12),
                Information: "Currently online, no issues.",
                Notes: "No current notes.",
                # building_id: building[i].id
            )
        i+= 1
        end
        # Batterie.import! batteries
        # p batteries #Prints batterie array
    end
end


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


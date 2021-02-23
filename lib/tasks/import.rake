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

        batterie = []
        i = Batterie.count + 1
        5.times do
            batterie << Batterie.new(
                id: i,
                Type: "hybrid", #not sure how to define b/w the 4 avaliable, might have to be hardcoded
                Status: 'online',
                EmployeeId: Faker::Number.between(from: 1, to: Employee.count), #Must be linked to employee table
                Date_of_commissioning: Faker::Date.between(from: 3.years.ago, to: Date.today),
                Date_of_last_inspection: Faker::Date.between(from: 3.years.ago, to: Date.today),
                Certificate_of_Operations: '654',
                Information: "Currently online, no issues.",
                Notes: "No current notes.",
                # building_id: building[i].id
            )
        i+= 1
        end
        p batterie #Prints batterie array
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


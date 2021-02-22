require 'csv'

namespace :import do
    task import_task: :environment do
        users = []
        import_users = File.join Rails.root, "import_users.csv"
        i = 9
        CSV.foreach(import_users, headers: true) do |row|
            users << User.new(id: i, email: row[0], password: row[1], admin: row[2])
            i += 1
            # p row #prints rows parsed
        end
        # User.import! users
        # p users #print users array

        employees = []
        import_employees = File.join Rails.root, "import_employees.csv"
        i = 0
        CSV.foreach(import_employees, headers: true) do |row|
            employees << Employee.new(first_name: row[0], last_name: row[1], title: row[2], email: users[i].email, user_id: users[i].id)
            i += 1
            # p row #prints rows parsed
        end
        Employee.import! employees
        # p employees #print users array
    end
end


require 'csv'

namespace :import do
    task import_task: :environment do
        users = []
        import_users = File.join Rails.root, "import_users.csv"
        i = User.count + 1
        CSV.foreach(import_users, headers: true) do |row|
            users << User.new(id: i, email: row[0], password: row[1], admin: row[2])
            i += 1
        end
        User.import! users
        # p users #print users array

        # employees = []
        # import_employees = File.join Rails.root, "import_employees.csv"
        # i = 0
        # CSV.foreach(import_employees, headers: true) do |row|
        #     p users[0].admin
        #     p users[1].admin
        #     p users[2].admin
        #     p users[3].admin
        #     p users[4].admin
        #     p users[5].admin
        #     p users[6].admin
        #     p users[7].admin
        #     p users[8].admin
        #     p users[9].admin
        #     if users[i].admin
        #         employees << Employee.new(first_name: row[0], last_name: row[1], title: row[2], email: users[i].email, user_id: users[i].id)
        #         i += 1
        #     end
        # end
        # # Employee.import! employees
        # p employees #print users array
    end
end


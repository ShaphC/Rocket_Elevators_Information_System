# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

employee_list = [
    [ "Nicolas", "Genest", "CEO", "nicolas.genest@codeboxx.biz" ],
    [ "Nadya", "Fortier", "Director", "nadya.fortier@codeboxx.biz" ],
    [ "Martin", "Chantal", "Director Assistant", "martin.chantal@codeboxx.biz" ],
    [ "Mathieu", "Houde", "Captain", "mathieu.houde@codeboxx.biz" ],
    [ "David", "Boutin", "Engineer", "david.boutin@codeboxx.biz" ],
    [ "Mathieu", "Lortie", "Engineer", "mathieu.lortie@codeboxx.biz" ],
    [ "Thomas", "Carrier", "Engineer", "thomas.carrier@codeboxx.biz" ],
  ]
  
  employee_list.each do |first_name, last_name, title, email|
    Employee.create(first_name: first_name, last_name: last_name, title: title, email: email)
  end

  p "Created #{Employee.count} employee(s)."

# Employee.create(first_name: "Nicolas", last_name: "Genest", title: "CEO", email: "nicolas.genest@codeboxx.biz")
# Employee.create(first_name: "Nadya", last_name: "Fortier", title: "Director", email: "nadya.fortier@codeboxx.biz")
# Employee.create(first_name: "Martin", last_name: "Chantal", title: "Director Assistant", email: "martin.chantal@codeboxx.biz")
# Employee.create(first_name: "Mathieu", last_name: "Houde", title: "Captain", email: "mathieu.houde@codeboxx.biz")
# Employee.create(first_name: "David", last_name: "Boutin", title: "Engineer", email: "david.boutin@codeboxx.biz")
# Employee.create(first_name: "Mathieu", last_name: "Lortie", title: "Engineer", email: "mathieu.lortie@codeboxx.biz")
# Employee.create(first_name: "Thomas", last_name: "Carrier", title: "Engineer", email: "thomas.carrier@codeboxx.biz")

# p "Created #{Employee.count} employee(s)."

# Employee.all.each do |employee|
#   user = User.new({
#     email: employee.email,
#     password: 123456,
#     password_confirmation: 123456,
#     admin: true})
#   employee.user = user
#   employee.save!

#   puts(employee.first_name, employee.user_id)
#   print
# end



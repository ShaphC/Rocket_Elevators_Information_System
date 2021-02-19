# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "nicolas.genest@codeboxx.biz", password: 123456, password_confirmation: 123456, admin: true)
User.create(email: "nadya.fortier@codeboxx.biz", password: 123456, password_confirmation: 123456, admin: true)
User.create(email: "martin.chantal@codeboxx.biz", password: 123456, password_confirmation: 123456, admin: true)
User.create(email: "mathieu.houde@codeboxx.biz", password: 123456, password_confirmation: 123456, admin: true)
User.create(email: "david.boutin@codeboxx.biz", password: 123456, password_confirmation: 123456, admin: true)
User.create(email: "mathieu.lortie@codeboxx.biz", password: 123456, password_confirmation: 123456, admin: true)
User.create(email: "thomas.carrier@codeboxx.biz", password: 123456, password_confirmation: 123456, admin: true)
User.create(email: "admin@admin.ca", password: 123456, password_confirmation: 123456, admin: true)

p "Created #{User.count} user(s)."

# User.all.each do |user|
#   print user.user_id
#   employee = Employee.create(first_name: "Nicolas", last_name: "Genest", title: "CEO", email: "nicolas.genest@codeboxx.biz")
# end


# @employee = @user.employees.create(first_name: "Nicolas", last_name: "Genest", title: "CEO", email: "nicolas.genest@codeboxx.biz")
Employee.create(first_name: "Nicolas", last_name: "Genest", title: "CEO", email: "nicolas.genest@codeboxx.biz", user_id: 1)
Employee.create(first_name: "Nadya", last_name: "Fortier", title: "Director", email: "nadya.fortier@codeboxx.biz", user_id: 2)
Employee.create(first_name: "Martin", last_name: "Chantal", title: "Director Assistant", email: "martin.chantal@codeboxx.biz", user_id: 3)
Employee.create(first_name: "Mathieu", last_name: "Houde", title: "Captain", email: "mathieu.houde@codeboxx.biz", user_id: 4)
Employee.create(first_name: "David", last_name: "Boutin", title: "Engineer", email: "david.boutin@codeboxx.biz", user_id: 5)
Employee.create(first_name: "Mathieu", last_name: "Lortie", title: "Engineer", email: "mathieu.lortie@codeboxx.biz", user_id: 6)
Employee.create(first_name: "Thomas", last_name: "Carrier", title: "Engineer", email: "thomas.carrier@codeboxx.biz", user_id: 7)
Employee.create(first_name: "Admin", last_name: "Admin", title: "Admin", email: "admin@admin.ca", user_id: 8)

p "Created #{Employee.count} employee(s)."

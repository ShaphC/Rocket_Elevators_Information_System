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
    Employee.create( first_name: first_name, last_name: last_name, title: title, email: email )
  end

  p "Created #{Employee.count} employee(s)."

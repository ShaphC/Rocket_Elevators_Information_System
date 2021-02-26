# Rocket_Elevators_Information_System

This repo is now the week 5 Odyssey project of Shaphan Charles team.

This week, we were tasked with creating an expanded relational database in MySQL, importing fake data into this expanded database, creating a data warehouse using PostgreSQl that pulls data from the MySQL database.

There were 8 new tables added to the MySQL database that relate to each other in various ways, and all of those tables with the exception of the Building Details table have fake data generated and imported into them. The users, quotes, and employees table also have generated imports as well.

The importing to MySQL is done via a rake task, and utilizes the acriverecord-import gem to import to the database, the faker gem to generate various types of random data, and the money gem to format the prices in the quote forms. The addresses are all provided via a JSON file taken from https://github.com/EthanRBrown/rrad. They are parsed using the json gem, and then a random address is selected from the parsed array and used to import.

The four required tables in PostgreSQL are created and use a rake task to receive their data from the populated MySQL tables.

All user accounts and passwords from week 4 are still included and valid.


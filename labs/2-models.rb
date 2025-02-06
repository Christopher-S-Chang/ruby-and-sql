# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file


# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

insert_salespeople = Salesperson.new
insert_salespeople["first_name"] = "Amanda"
insert_salespeople["last_name"] = "Hugginkiss"
insert_salespeople["email"] = "aman.hug@gmail.com"
insert_salespeople.save
puts insert_salespeople.inspect

insert_salespeople = Salesperson.new
insert_salespeople["first_name"] = "IP"
insert_salespeople["last_name"] = "Freely"
insert_salespeople["email"] = "IP.freely@gmail.com"
insert_salespeople.save
puts insert_salespeople.inspect
# 3. write code to display how many salespeople rows are in the database

puts "the number of sales is #{Salesperson.all.count}"

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

IP = Salesperson.find_by({"first_name"=> "IP", "last_name" => "Freely"})
IP["email"] = "IPF@gmail.com"
IP.save

# CHALLENGE:
# 5. write code to display each salesperson's full name

people = Salesperson.all
For person in people
first_name = person["first_name"]
last_name = person["last_name"]
    puts "#{first_name} #{last_name}"
end
# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng

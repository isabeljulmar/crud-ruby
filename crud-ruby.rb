require 'httparty'
require 'json'
require 'pry'

BASE_URL = "http://json-server.devpointlabs.com/api/v1"

users = HTTParty.get("#{BASE_URL}/users").parsed_response

# probably going to turn into an all_users method
user = ['', '', '']
def menu
    puts "Select"
    puts "1) List all users"
    puts "2) Add user"
    puts "3) Update a user"
    puts "4) Delete a user"

    numb = gets.to_i
    case numb
        when 1
            all_users
        when 2
            add_user
        when 3
            update_user
        when 4
            delete_user
        else
            puts "bruh"
            menu
    end
end

def all_users
    users.each do |user|
       puts user['id']
       puts user['first_name']
       puts user['last_name']
       puts user['phone_number']
    end
end 

def add_user
    puts "First Name - Last Name - Phone Number"
    i = user.new 
    i.first_name = gets.to_s
    i.last_name = gets.to_s
    i.phone_number = gets.to_i
    i.save
end

def delete_user
    puts "Enter user id"
    gets.to_i

end
# implement a menu that is in a loop until the user quits
# 1. all users
# 2. single user
# 3. add user
# 4. update user
# 5. delete user
# 6. quit

menu 
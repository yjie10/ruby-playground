require 'csv'

# Task 1
users_data = []
loans_data = []
application_type_data = []

def read_csv(file_name, data)
  CSV.foreach(file_name, headers: true, col_sep: ",") do |row|
    data << Hash(row)
  end
end

read_csv("users.csv", users_data)
read_csv("loans.csv", loans_data)
read_csv("application_type.csv", application_type_data)

# Task 2

# 2.1 How many users have more than 1 loan? - 219
count1 = 0

users_data.each do |user|
  if user["loan_ids"].split(",").length() > 1
    count1 += 1
  end
end

# outputs 219
# puts count1


# 2.2 How many users are there with a loan more than $1,000,000? - 267
count2 = 0
loan_amount = 0

users_data.each do |user|
  if user["loan_ids"].split(",").length() > 1
    loan_ids = user["loan_ids"].split(",")

    # sums up all loan amount under the same user
    loan_ids.each do |loan_id| 
      loan_amount += loans_data[loan_id.to_i - 1]["loan_amount"].to_i 
    end
  
  else
    loan_amount = loans_data[user["loan_ids"].to_i - 1]["loan_amount"].to_i
  end
  
  # puts loan_amount
  if loan_amount.to_i > 1000000
    count2 += 1
  end

  # reset loan amount
  loan_amount = 0
end

# outputs 267
# puts count2


# 2.3 How many loans does each user have? (Display their name, and number of loans)
user_loans = []
users_data.each do |user|
  number_of_loans = user["loan_ids"].split(",").length()
  user_loans << [user["name"], number_of_loans]
end

# Display
# user_loans.each do |key, value|
#   puts "#{key}: #{value}"
# end


# 2.4 How many loans are there of each type? (Display app type, number of loans for that type)
# create application type hash for mapping later
application_type_hash = {}
application_type_data.each do |application_type|
  application_type_hash[application_type["id"]] = application_type["type"]
end

loan_info = {}
loans_data.each do |loan|
  # return string value of the application type
  application_type = application_type_hash[loan["application_type_id"]] 
  
  # if the type doesn't already exist in the resulting hash, add to it and assign it 1 (counting current application)
  if !loan_info[application_type]
    loan_info[application_type] = 1
  else
    loan_info[application_type] += 1
  end
end

# Display
# loan_info.each do |key, value|
#   puts "#{key}: #{value}"
# end


# temp_hash = {}
result_arr = []
users_data.each do |user|
  curr_app_id = 0
  if user["loan_ids"].split(",").length() > 1
    loan_ids = user["loan_ids"].split(",")

    temp_hash = {}
    loan_ids.each do |loan_id|
      curr_app_id = loans_data[loan_id.to_i - 1]["application_type_id"]
      if !temp_hash[curr_app_id]
        temp_hash[curr_app_id] = loans_data[loan_id.to_i - 1]["loan_amount"].to_i
      else
        temp_hash[curr_app_id] += loans_data[loan_id.to_i - 1]["loan_amount"].to_i
      end
    end

    temp_hash.each do |key, value|
        result_arr << [user["name"], application_type_hash[key], value]
    end

  else
    curr_loan_number = user["loan_ids"].to_i - 1
    curr_app_id = loans_data[curr_loan_number.to_i - 1]["application_type_id"]
    result_arr << [user["name"], application_type_hash[curr_app_id], loans_data[curr_loan_number]["loan_amount"]]
  end
end

# puts result_arr



# Task 3
# users_data.each_with_index do |user, index|
#   if user["loan_ids"].split(",").length() == 1
#     w_loan_number = user["loan_ids"].to_i - 1
#     w_loan_type_id = loans_data[w_loan_number]["application_type_id"]

#     w_name = user["name"]    
#     w_loan_type_name = application_type_hash[w_loan_type_id]
#     w_loan_amount = loans_data[w_loan_number]["loan_amount"]

#     data_out << [index + 1, w_name, w_loan_type_name, w_loan_amount]
#   end
# end

# CSV.open("newfile.csv", "w", 
#   :write_headers => true, 
#   :headers => ["user_name", "application_type_name", "loan_amount"]) do |newcsv|
#     result_arr.each do |data|
#       newcsv << data
#     end
# end



# CSV.open("newfile2.csv", "w", 
#   :write_headers => true, 
#   :headers => ["id", "user_name", "application_type_name", "loan_amount"]) do |newcsv|
#     result_arr.each_with_index do |data, index|
#       newcsv << [index, data]
#     end
# end







---

require 'csv'

# Task 1
users_data = []
loans_data = []
application_type_data = []

def read_csv(file_name, data)
  CSV.foreach(file_name, headers: true, col_sep: ",") do |row|
    data << Hash(row)
  end
end

read_csv("users.csv", users_data)
read_csv("loans.csv", loans_data)
read_csv("application_type.csv", application_type_data)


# Task 2

# 2.1 How many users have more than 1 loan? - 219
count1 = 0

users_data.each do |user|
  if user["loan_ids"].split(",").length() > 1
    count1 += 1
  end
end

# uncomment below to Display
# puts "Users with more than 1 loan: #{count1}"


# 2.2 How many users are there with a loan more than $1,000,000? - 267
count2 = 0

users_data.each do |user|
  loan_amount = 0
  # if the user has multiple loans
  if user["loan_ids"].split(",").length() > 1
    loan_ids = user["loan_ids"].split(",")

    # sums up all loan amount under the same user
    loan_ids.each do |loan_id| 
      loan_amount += loans_data[loan_id.to_i - 1]["loan_amount"].to_i 
    end
  # if the user only has one loan
  else
    loan_amount = loans_data[user["loan_ids"].to_i - 1]["loan_amount"].to_i
  end

  if loan_amount.to_i > 1000000
    count2 += 1
  end
end

# uncomment below to Display
# puts count2


# 2.3 How many loans does each user have? (Display their name, and number of loans)
user_loans = []
check_var = []
users_data.each do |user|
  number_of_loans = user["loan_ids"].split(",").length()
  check_var << user["loan_ids"].split(",")
  # puts check_var
  # puts "---"
  # check_var += number_of_loans
  user_loans << [user["name"], number_of_loans]
end

puts check_var.flatten.map(&:to_i).sort

# puts check_var
# uncomment below to Display
# user_loans.each do |key, value|
#   puts "#{key}: #{value}"
# end


# 2.4 How many loans are there of each type? (Display app type, number of loans for that type)
# create application type hash for mapping later
application_type_hash = {}
application_type_data.each do |application_type|
  application_type_hash[application_type["id"]] = application_type["type"]
end

loan_info = {}
loans_data.each do |loan|
  # return string value of the application type
  application_type = application_type_hash[loan["application_type_id"]] 
  
  # if the type doesn't already exist in the resulting hash, add to it and assign it 1 (counting current application)
  if !loan_info[application_type]
    loan_info[application_type] = 1
  else
    loan_info[application_type] += 1
  end
end

# uncomment below to Display
# loan_info.each do |key, value|
#   puts "#{key}: #{value}"
# end


# Task 3
# organize data
data_out = []
users_data.each do |user|
  curr_app_id = 0
  # if the user has multiple loans
  if user["loan_ids"].split(",").length() > 1
    loan_ids = user["loan_ids"].split(",")

    temp_hash = {}
    loan_ids.each do |loan_id|
      curr_app_id = loans_data[loan_id.to_i - 1]["application_type_id"]
      
      # check if any of loans are of the same type, and sum it up if so
      if !temp_hash[curr_app_id]
        temp_hash[curr_app_id] = loans_data[loan_id.to_i - 1]["loan_amount"].to_i
      else
        temp_hash[curr_app_id] += loans_data[loan_id.to_i - 1]["loan_amount"].to_i
      end
    end

    temp_hash.each do |key, value|
        data_out << [user["name"], application_type_hash[key], value]
    end

  # if the user only has one loan
  else
    curr_loan_number = user["loan_ids"].to_i - 1
    curr_app_id = loans_data[curr_loan_number.to_i - 1]["application_type_id"]
    
    data_out << [user["name"], application_type_hash[curr_app_id], loans_data[curr_loan_number]["loan_amount"]]
  end
end

# uncomment below to write to new csv file
# CSV.open("newfile.csv", "w", 
#   :write_headers => true, 
#   :headers => ["user_name", "application_type_name", "loan_amount"]) do |newcsv|
#     data_out.each do |data|
#       newcsv << data
#     end
# end







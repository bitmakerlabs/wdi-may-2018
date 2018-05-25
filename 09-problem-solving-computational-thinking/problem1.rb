# Problem: Get the total sum of a list of numbers
# 1 2 5 11 1

# iterate through each number, adding them one by one to a total
# return total

# define method total_sum(list_of_numbers)

# total = 0
# loop through list_of_numbers
  # total = total + current_number
# end loop

#   return total
# end

def total_sum(list_of_numbers)
  total = 0

  list_of_numbers.each do |current_number|
    total = total + current_number
  end

  return total
end





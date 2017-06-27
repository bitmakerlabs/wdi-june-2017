# Restaurant Check Calculator

def calculate_tax(cost_of_meal, tax_rate = 0.13)
  # cost_of_meal = 100
  if tax_rate == 0
    return cost_of_meal
  end

  puts "Calculating tax value..."

  cost_of_meal * tax_rate

  #
  # puts result
end

def calculate_tip(cost_of_meal, tip_rate = 0.15)
  cost_of_meal * tip_rate
end

def calculate_incremental_amount(cost_of_goods, rate)
  cost_of_goods * rate
end

# cost_of_meal = 100
# tax_rate = 0.13

tax_amount = calculate_tax(100, 0)

puts tax_amount
puts calculate_tax(100, 0.05)
puts calculate_tax(34, 0.25)
puts calculate_tax(1234, 0.15)


cost_of_meal_one = 100

# tax_rate = 0.13
tax_amount = calculate_tax(cost_of_meal_one)

cost_of_meal_one_with_tax = cost_of_meal_one + tax_amount

# tip_rate = 0.15
tip_amount = calculate_tip(cost_of_meal_one)

total_cost_of_meal_one_with_tax_and_tip = cost_of_meal_one_with_tax + tip_amount

puts "The cost of meal one is $#{cost_of_meal_one}"
puts "The cost of meal one with taxes is $#{cost_of_meal_one_with_tax}"
puts "The total cost of meal one is $#{total_cost_of_meal_one_with_tax_and_tip}"


cost_of_meal_two = 76
meal_two_tax_amount = calculate_tax(cost_of_meal_two)
cost_of_meal_two_with_tax = cost_of_meal_two + meal_two_tax_amount
meal_two_tip_amount = calculate_tip(cost_of_meal_two)

total_cost_of_meal_two = cost_of_meal_two_with_tax + meal_two_tip_amount

puts "The cost of meal two is $#{cost_of_meal_two}"
puts "The cost of meal two with taxes is $#{cost_of_meal_two_with_tax}"
puts "The total cost of meal two is $#{total_cost_of_meal_two}"

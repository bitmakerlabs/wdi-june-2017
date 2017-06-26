number_of_cars = 110
number_of_spaces = 50

percentage_utilization = (number_of_cars.to_f / number_of_spaces) * 100.0

if percentage_utilization > 95
  puts "The lot is full"
elsif percentage_utilization >= 50
  puts "Surge pricing in effect"
else
  puts "The lot is currently #{percentage_utilization}% full."
end

surge_pricing = true if percentage_utilization >= 50


puts "The lot is currently #{percentage_utilization}% full." unless surge_pricing


# if statements

# if (some condition is true)
#   then do something awesome
# (optionally) otherwise
#   then do something else



# case statement

if number_of_cars == 10
elsif number_of_cars == 20
elsif number_of_cars == 30
else
end


case number_of_cars
when 10, 110, 210
  puts "tens"
when 20
  puts "twenties"
when 30
  puts "thirties"
else
  puts "else"
end

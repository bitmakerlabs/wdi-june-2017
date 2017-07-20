

def find_leap_years(start_year, end_year)
  leap_years = []

  (start_year..end_year).each do |year|
    if year % 4 == 0
      
      unless (year % 100 == 0) && (year % 400 != 0)
        leap_years << year
      end
    end
  end

  return leap_years
end

puts find_leap_years(2000, 2012) # should return: [2000, 2004, 2008, 2012]
puts find_leap_years(1895, 1910) # should return: [1896, 1904, 1908]


# divisible by 4

# except:
  # if divisible by 100 and NOT by 400

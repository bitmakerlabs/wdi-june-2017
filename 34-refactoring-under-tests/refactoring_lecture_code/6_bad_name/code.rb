# Calculates the total accrued amount from principal loan
# Note: rate must be as a percentage float i.e. 9.2 or 14.4
# Note: number is number of periods in years
def total_amount_owed(principal, interest_rate_percentage, number_of_years)
  annual_percentage_rate = interest_rate_percentage / 100
  principal * (1 + annual_percentage_rate * number_of_years)
end

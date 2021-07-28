def leap_year?(year)
  year < 1752 ? julian_calendar?(year) : gregorian_calendar?(year)
end

def gregorian_calendar?(year)
  (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
end

def julian_calendar?(year)
  year % 4 == 0
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true

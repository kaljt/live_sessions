class ValidationError < StandardError; end

def validate_year(yr)
  raise(ValidationError,"bad year - must be 4 digits") unless yr.size == 4
end

begin
validate_year(2012)
validate_year(20)
rescue ValidationError => e
  puts e.message
end

def divide (numerator, denominator)
  raise ArgumentError if numerator.is_a?(String)
  
  counter = 0
  while numerator - denominator >= 0
    numerator -= denominator
    counter += 1
  end

  counter
end

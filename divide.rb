def divide (numerator, denominator)
  counter = 0
  while numerator - denominator >= 0
    numerator -= denominator
    counter += 1
  end

  counter
end

def fizzbuzz_single(number)
  if number % 15 == 0
    "fizzbuzz"
  elsif number % 3 == 0
    "fizz"
  elsif number % 5 == 0
    "buzz"
  else
    number.to_s
  end
end

def fizzbuzz_list(list)
  list.map { |number| fizzbuzz_single(number)}
end




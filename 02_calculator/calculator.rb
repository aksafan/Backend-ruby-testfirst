# frozen_string_literal: true

def add(first_value, second_value)
  first_value + second_value
end

def subtract(first_value, second_value)
  first_value - second_value
end

def sum(array_values)
  array_values.inject(0, :+) # Trying a new features for me
end

def multiply(array_values)
  array_values.inject(:*) || 0
end

def power(first_value, second_value)
  first_value**second_value
end

def factorial(factorial_value)
  return 0 if factorial_value.zero?

  (1..factorial_value).inject(:*)
end

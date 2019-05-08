def product(a, b)
  return "Odd" if (a + b).odd?

  "Even"
end


a, b = gets.split.map(&:to_i)
puts product(a, b)

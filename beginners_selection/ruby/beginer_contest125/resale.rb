n = gets.to_i
v = gets.chomp.split.map(&:to_i)
c = gets.chomp.split.map(&:to_i)
ans = 0

n.times do |i|
  if v[i] > c[i]
    ans += v[i] - c[i]
  end
end

puts ans

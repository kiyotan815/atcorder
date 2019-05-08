n = gets.chomp.to_i
ary = gets.chomp.split(' ').map(&:to_i)

right_gcd = [ary.first]
ary.slice(1..-1).each { |num| right_gcd << right_gcd.last.gcd(num) }

left_gcd = [ary.last]
ary.reverse.slice(1..-1).each { |num| left_gcd << left_gcd.last.gcd(num) }
left_gcd = left_gcd.reverse

puts right_gcd.join(" ")
puts left_gcd.join(" ")
ans = 0

0.step(n - 1) do |i|
  if i ==  0
    left_gcd[i + 1]
  elsif i == n - 1
    right_gcd[i - 1]
  else
    right_gcd[i - 1].gcd(left_gcd[i + 1])
  end.tap { |gcd| ans = (gcd > ans ? gcd : ans) }
end

puts ans


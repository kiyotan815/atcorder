
n, a, b = gets.strip.split.map(&:to_i)

def get_digits n
    sum = 0
    while n > 0 do
        sum += n % 10
        n /= 10
    end
    sum
end

answer = (1..n)
  .map { |i| [i, get_digits(i)] }
  .select { |d| a <= d[1] && d[1] <= b }
  .inject(0) { |sum, d| sum + d[0] }

puts answer

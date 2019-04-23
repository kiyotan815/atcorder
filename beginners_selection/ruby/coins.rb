text = <<-TEXT
  500円玉をA 枚、100円玉をB枚、50円玉をC枚持っています。
  これらの硬貨の中から何枚かを選び、
  合計金額をちょうどX円にする方法が何通りあるかを出力します。
  TEXT
puts text

print "A = "
a = gets.to_i

print "B = "
b = gets.to_i

print "C = "
c = gets.to_i

print "X = "
x = gets.to_i

cnt = 0
(0..a).each do |i|
  (0..b).each do |j|
    (0..c).each do |k|
      cnt += 1 if i * 500 + j * 100 + k * 50 == x
    end
  end
end

puts cnt



text = <<-TEXT
  問題:
  黒板に N 個の正の整数 A 1...A N が書かれています
  すぬけ君は，黒板に書かれている整数がすべて偶数であるとき，次の操作を行うことができます．
  黒板に書かれている整数すべてを2 で割ったものに置き換える．
  すぬけ君は最大で何回操作を行うことができるかを求めてください．
TEXT

puts text

print "N = "
N = gets.to_i
print "半角スペース区切りで,\n例: 12 32 43\n"
print "A = "
A = gets.chomp.split(" ").map(&:to_i)

bit = 0
count = 0

A.each { |a| bit = a | bit }

while (bit & 1) == 0 do
  bit >>= 1
  count += 1
end

puts "最大操作回数 #{count}"

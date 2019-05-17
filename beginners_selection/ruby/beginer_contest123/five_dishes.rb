times = 5.times.map{ gets.to_i }
min  = 0
time = 0

foods.each_with_index do |f, i|
  a = f % 10
  if a == 0
    time += a
  else
    min = f if min > f
  end
end

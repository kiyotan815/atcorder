N = gets.to_i
turn = []
px = []
py = []

N.times do
	t,x,y = gets.split.map(&:to_i)
	turn << t
	px << x
	py << y
end

x=y=t=n=0

N.times do

	if(((x-px[n]).abs() + (y-py[n]).abs() > turn[n] - t )||
	   ((x-px[n]).abs() + (y-py[n]).abs() ) %2 != (turn[n] - t)%2) then
		break
	end

	x = px[n]
	y = py[n]
	t = turn[n]
	n = n+1
end

puts (n == N) ? 'Yes' : 'No'

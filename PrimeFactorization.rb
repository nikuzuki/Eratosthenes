p "Input number"
n = gets.to_i
x = n
y = 2
p n.to_s + "の素因数"
while true
	if x % y == 0 then
		x /= y
		p y
	else
		y += 1
	end

	if x / 2 < y then
		break
	end
end
if x > 1 then
	p x
end
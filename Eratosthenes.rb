p "Input number"
n = gets.to_i
if n >= 2 then
	p Limit = n**(1/2.0)

	p i = Limit.to_i
	while i > 1
		if n % i == 0 then
			break
		end
		i -= 1
	end

	if i == 1 then
		p "A prime number\n"
	else
		p "Not a prime number\n"
	end

end
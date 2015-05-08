puts "Let's Janken!!!!!!\n"

table = [[0, 0, 0],
		 [0, 0, 0],
		 [0, 0, 0] ]
hist = [0, 0, 0]
hand = {0 => "Rock", 1 => "Scissors", 2 => "Paper"}

m = 0

while 1
	if table[m][0]>table[m][1] && table[m][0]>table[m][2]
		computer = 2
	elsif table[m][1]>table[m][2]
		computer = 0
	else
		computer = 1 
	end

	puts "\n0:Rock, 1:Scissors, 2:Paper\n"
	player = gets.to_i

	puts "You chose the " + hand[player]
	puts "Computer chose the " + hand[computer] + "\n"

	judge = (computer - player + 3) % 3

	case judge
	when 0 then
		puts "----Draw----\n\n"
	when 1 then
		puts "----You are winner----\n\n"
	when 2 then
		puts "----You are loser^o^----\n\n"
	end

	hist[judge] += 1
	table[m][player] += 1
	m = player

	#unasuke help
	puts hist[1]
	if hist[1] = 1
		puts "win, "
	else
		puts "wins, "
	end

	puts hist[2]
	if hist[2] = 1
		puts "loss, "
	else
		puts "losses, "
	end

	puts "#{hist[0]}\ndraw"

end
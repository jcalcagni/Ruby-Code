class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
def rps_game_winner(game)
	p "game: #{game}"
	raise WrongNumberOfPlayersError unless game.length == 2
	game.each do |turn|
		matched = turn[1].match(/^[RPSrps]$/)
		raise NoSuchStrategyError, turn[1].to_s unless matched
	end
	winner(game)
end

def rps_tournament_winner(brackets)

	return if brackets.empty?

	halfIndex = brackets.length / 2
	firstHalf = brackets.slice(0, halfIndex)
	if firstHalf.class.to_s == "".class.to_s
		return brackets
	end

	if brackets.length == 2 && brackets[0][1].class.to_s == "".class.to_s
		p "now sending for battle: #{brackets}"
		return rps_game_winner(brackets)
	end

	if brackets.length == 1
		return rps_tournament_winner(brackets[0])
	end

	secondHalf = brackets.slice(halfIndex)
	rps_game_winner([rps_tournament_winner(firstHalf), rps_tournament_winner(secondHalf)])
	
end

def rps_bracket_winner(bracket)
	winnerOne = rps_game_winner(bracket[0])
	winnerTwo = rps_game_winner(bracket[1])
	finalWinner = rps_game_winner([winnerOne, winnerTwo])
end

def winner(game)
	if game[0][1].match(/^[Rr]$/)
		if game[1][1].match(/^[Ss]$/)
			return game[0]
		elsif game[1][1].match(/^[Pp]$/)
			return game[1]
		else
			return game[0]
		end
	end

	if game[0][1].match(/^[Pp]$/)
		if game[1][1].match(/^[Ss]$/)
			return (game[1])
		elsif game[1][1].match(/^[Rr]$/)
			return game[0]
		else
			return game[0]
		end
	end

	if game[0][1].match(/^[Ss]$/)
		if game[1][1].match(/^[Rr]$/)
			return game[1]
		elsif game[1][1].match(/^[Pp]$/)
			return game[0]
		else
			return game[0]
		end
	end
end

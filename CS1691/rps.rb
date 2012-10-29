class WrongNumberOfPlayersError <  StandardError ; end
class NoSuchStrategyError <  StandardError ; end

def rps_game_winner(game)
    raise WrongNumberOfPlayersError unless game.length == 2
    
	puts "game: #{game}"
	
	game.each do |turn|
	   valid_move = turn[1].match(/^[RPSrps]$/)
	   raise NoSuchStrategyError unless valid_move
	end
	
	show_who_wins(game) #puts
	
end
	
def show_who_wins(game)
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
	      return game[1]
	   elsif game[1][1].match(/^[Rr]$/)
	      return game[0]
	   else
	      return game[0]
	   end
	end
	
	if game[0][1].match(/^[Ss]$/)
	   if game[1][1].match(/^[Pp]$/)
	      return game[0]
	   elsif game[1][1].match(/^[Rr]$/)
	      return game[1]
	   else
	      return game[0]
	   end
	end
end

#game_arr = [[ "Dave", "S" ],[ "Armando", "S" ]]
#rps_game_winner(game_arr)

def another_game(game)
  return game[0][0].is_a?(String)
end

def rps_tournament_winner(tournament)
    while not tournament[0].is_a? String do
        i = i == 0 ? 1 : 0
        if tournament[i][0].is_a? String
            return rps_game_winner(tournament)
        else
            tournament[i] = rps_tournament_winner(tournament[i])
        end
    end
    return tournament
end 


tournament_list = [
[
[ ["Armando", "P"], ["Dave", "S"] ],
[ ["Richard", "R"], ["Michael", "S"] ],
],
[
[ ["Allen", "S"], ["Omer", "P"] ],
[ ["David E.", "R"], ["Richard X.", "P"] ]
]
]
puts tournament_list.to_s + " => " + rps_tournament_winner(tournament_list).to_s



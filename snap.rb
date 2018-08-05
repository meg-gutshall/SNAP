flash_pile = [ 'A', '5', 'Q', 'Q', '6', '2', 'A', '9', '10', '6', '4', '3', '10', '9', '3', '8', 'K', 'J', 'J', 'K', '7', '9', '5', 'J', '7', '2' ]
turtle_pile = [ '8', 'A', '2', 'Q', 'K', '8', 'J', '6', '4', '8', '7', 'A', '5', 'K', '3', 'Q', '6', '9', '4', '3', '4', '10', '2', '7', '10', '5' ]
snap_counter = 0
middle_pile = []
n = 0

while !turtle_pile.empty?
  middle_pile.push(flash_pile.slice!(0))
  n += 1
  middle_pile.push(turtle_pile.slice!(0))
  n += 1
  until middle_pile[n-1] == middle_pile[n-2]
    middle_pile.push(flash_pile.slice!(0))
    n += 1
    if middle_pile[n-1] == middle_pile[n-2]
      puts "SNAP!"
      snap_counter += 1
      middle_pile.each {|card| flash_pile << card}
      middle_pile.clear
    else
      middle_pile.push(turtle_pile.slice!(0))
      n += 1
    end
  end
  puts "SNAP!"
  snap_counter += 1
  middle_pile.each {|card| flash_pile << card}
  middle_pile.clear
end
snap_counter

# Solution with Methods
# def flash_turn
#   middle_pile.push(flash_pile.slice!(0))
#   n += 1
# end

# def turtle_turn
#   middle_pile.push(turtle_pile.slice!(0))
#   n += 1
# end

# def end_round
#   puts "SNAP!"
#   snap_counter += 1
#   middle_pile.each {|card| flash_pile << card}
#   middle_pile.clear
# end

# def snap(flash_pile, turtle_pile)
#   while !turtle_pile.empty?
#     flash_turn
#     turtle_turn
#     until middle_pile[n-1] == middle_pile[n-2]
#       flash_turn
#       middle_pile[n-1] == middle_pile[n-2] ? end_round : turtle_turn
#     end
#     end_round
#   end
#   snap_counter
# end

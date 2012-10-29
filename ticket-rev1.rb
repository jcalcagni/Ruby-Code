ticket = Object.new

def ticket.venue
  "Town Hall"
end

def ticket.performer
   "Mark Twain"
end

def ticket.event
   "Author's Reading"
end

def ticket.price
   5.50
end

def ticket.seat
   "Second Balcony, Row J, Seat 12"
end

def ticket.date
   "01/01/12"
end

def ticket.available?
   false
end

print "This ticket is for: #{ticket.event}, at #{ticket.venue}. " +
  "The performer is #{ticket.performer}. " +
  "The seat is #{ticket.seat}, " +
  "and it costs $#{"%.2f." %ticket.price}"


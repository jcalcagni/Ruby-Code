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

print "This ticket is for: "
print ticket.event + ", at "
print ticket.venue + ", on "
puts ticket.date + "."
print "The performer is "
puts ticket.performer + "."
print "The seat is "
print ticket.seat + ", "
print "and it costs $"
puts "%.2f." % ticket.price


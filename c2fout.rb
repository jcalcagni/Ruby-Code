print "Hello. Please enter a Celsius value."
celsius = gets.to_i
fahrenheit = (celsius * 9 / 5) + 32
print "The Fahrenheit equivalent is "
print fahrenheit
puts "."
puts "Saving result to output file 'temp.out'"
file_out = File.new("temp.out", "w")
file_out.puts fahrenheit
file_out.close



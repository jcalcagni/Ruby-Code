puts "Reading Celsius temperature value(s) from data file..."
num = File.read("temp.dat")
celsius = num.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "Original Celsius value is: " + num
print "The Fahrenheit equivalent is "
print fahrenheit
puts "."


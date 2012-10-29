class Numeric
 @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1.0}
 def method_missing(method, *args)
   singular_currency = ( method == :in ? args.first : method).to_s.gsub( /s$/, '')
   if @@currencies.has_key?(singular_currency)
     self.send(method == :in ? :/ : :*, @@currencies[singular_currency])
   else
     super
   end
 end
   def self.add_currency(name, conversion)
      @@currencies[name, to_s] = conversion
   end
end
   
#puts 1.dollar.in(:rupees)
#puts 10.rupees.in(:euro)
#puts 5.rupees.in(:yen)

class String
  def palindrome?
    self.gsub!(/\W+/,'').downcase!
    self == self.reverse
  end
end

#p "A man, a plan, a canal -- Panama".palindrome?

module Enumerable
   def palindrome?
     self.to_a == self.to_a.reverse
    end
end

puts [1,2,3,2,1].palindrome?
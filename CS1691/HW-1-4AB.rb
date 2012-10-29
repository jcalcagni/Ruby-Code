class Dessert
    #constructor
	def initialize(name, calories)
		@name, @calories = name, calories
    end
     
	#accessor / get
	def name
	   @name
	end
	def calories
	   @calories
	end
	
	#setter
	def name=(value)
	   @name = value
	end
	def calories=(value)
	   @calories = value
	end
	
    def healthy?
        if @calories < 200
		  return true
		else
		  return false
		end
    end

    def delicious?
        return true
    end
end

class JellyBean < Dessert
    #constructor
    def initialize(name, calories, flavor)
		@flavor = flavor
	end	

	#accessor / get
	def flavor
        @flavor
    end
	#setter
	def flavor=(value)
	    @flavor = value
    end

    def delicious?
        if @flavor == "black licorice"
		  return false
		else
		  return true
		end
    end
end



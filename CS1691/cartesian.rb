class CartesianProduct
    include Enumerable
    
	def initialize(arr1, arr2)
	  @arr1 = arr1
	  @arr2 = arr2
	end  
	
	def each
	   @arr1.each do |firstItem|
	        @arr2.each do |secondItem|
			      yield [firstItem, secondItem]
		    end
	    end
	end
end


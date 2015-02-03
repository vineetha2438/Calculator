class Calculator
	@@value = 0
	def initialize
	
	end

	def add(response)
		
        @@value =response + @@value
	end
	
	def subtract(response)
	  @@value =@@value - response
	end

	def multiply(response)
		 @@value =response * @@value
	end

	def divide(response)
		 if (@@value == 0)
		 	return 0
		 else
		 	 @@value =response / @@value
		 end
	end

	def cancel
		return 0
	end

	def exit
	end
end


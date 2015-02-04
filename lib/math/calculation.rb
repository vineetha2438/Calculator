#Performs basic mathematical operations
class Calculator
	
	attr_reader :value

	def initialize(value = 0)
		@value = value
	end

	def add(response)
		@value = response + @value
	end
	
	def subtract(response)
	  @value = @value - response
	end

	def multiply(response)
		@value = response * @value
	end

	def divide(response)
		 if (@value == 0)
		 	return 0
		 else
		 	@value = response / @value
		 end
	end

	def cancel
		return 0
	end

	def square
    @value ** 2
  end

  def cube
    @value ** 3
  end

  def negative
    @value * (-1)
  end

  def absolute
    @value.abs
  end

  def square_root
    Math.sqrt(@value)
  end

  def cube_root
  	Math.cbrt(@value)
  end

end


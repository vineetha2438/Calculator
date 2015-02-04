class Parser
	def initialize
		@cal = Calculator.new
	end

	def parsing(com)
		@op,@val_d = com.split(" ")
		@val = @val_d.to_f
		case @op
			when "add"
				@result = @cal.add(@val)
			when "subtract"
				@result = @cal.subtract(@val)
			when "multiply"
				@result = @cal.multiply(@val)
			when "divide"
				@result = @cal.divide(@val)
			when "cancel"
				@result = @cal.cancel
			when "sqr"
				@result = @cal.square
			when "sqrt"
				@result = @cal.square_root
			when "cube"
				@result = @cal.cube
			when "cubert"
				@result = @cal.cube_root
			when "abs"
				@result = @cal.absolute
			when "neg"
				@result = @cal.negative
			end

		return @result
	end

end





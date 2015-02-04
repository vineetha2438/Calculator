#Takes the command from the user and splits the command into operator and operand

class Parser
	def initialize
		@cal = Calculator.new
		@previous_commands = []
	end

	def parsing(com)
		@previous_commands << com
		op,@val_d = com.split(" ")
		@val = @val_d.to_f
		case op
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
		  when "repeat"
		  	@result = self.repetition
		 end

		return @result
	end

	def repetition
		@previous_commands.pop
		for i in @previous_commands.length - @val.to_i .. @previous_commands.length - 1
			final_value = self.parsing(@previous_commands[i])
		end
			return final_value
	end
end





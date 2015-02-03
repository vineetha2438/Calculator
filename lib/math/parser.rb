class Parser
	def inititalize(command)
		@command = command
		@cal = Calculator.new
	end

	def parsing
		op,val = @command.split(" ")
		case op
		when add
			cal.add(val)
		when subtract
			cal.subtract(val)
		when multiply
			cal.multiply(val)
		when divide
			cal.divide(val)
		when cancel
			cal.cancel
		end
	end
end





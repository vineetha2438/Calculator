#Launches the application
class Launch
	def initialize
		@par = Parser.new
	end

	def start
		print "$ "
		input = gets.chomp
		while input != 'exit' do 
    		puts @par.parsing(input)
    		print "$"
    		input = gets.chomp
    	end
  	end

  	def check
		input = Kernel.gets.chomp
    	@par.parsing(input)
  	end
end
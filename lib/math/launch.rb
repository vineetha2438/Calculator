
class Launch
	def initialize
		par = Parser.new
		print "$ "
		input = gets.chomp
		while input != 'exit' do 
    		par.parsing(input)
    		print "$"
    		input = gets.chomp
    end
  end
end
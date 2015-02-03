require 'spec_helper'
	
describe "parsing" do 
	
	let(:var) { Parser.new("add 5")}

	it "should split the operators" do 
		expect(var.parsing).to eq(5)
	end
end
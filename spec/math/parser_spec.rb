require 'spec_helper'

describe "parsing" do 
	
	let(:var) { Parser.new}

	it "should split the operators" do 
		expect(var.parsing('add 5')).to eq(5)
	end
	it "should multiply " do
		expect(var.parsing('multiply 5')).to eq(0)
	end
	it "should divide " do
		expect(var.parsing('divide 5')).to eq(0)
	end
	it "should subtract " do
		expect(var.parsing('subtract 5')).to eq(-5)
	end
	it "should reset the result " do 
		expect(var.parsing('cancel')).to eq(0)
	end
	it "should find sqaure " do 
		expect(var.parsing('sqr')).to eq(0)
	end
	it "should find sqaureroot " do 
		expect(var.parsing('sqrt')).to eq(0)
	end
	it "should find cube " do 
		expect(var.parsing('cube')).to eq(0)
	end
	it "should find cube root" do 
		expect(var.parsing('cubert')).to eq(0)
	end
	it "should find absolute " do 
		expect(var.parsing('abs')).to eq(0)
	end
	it "should find negation " do 
		expect(var.parsing('neg')).to eq(0)
	end
	it "checks" do 
		var.parsing('add 5')
		var.parsing('subtract 2')
		var.parsing('add 5')
		var.parsing('subtract 2')
		expect(var.parsing('repeat 2')).to eq(9)
	end


end
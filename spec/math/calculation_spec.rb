require 'spec_helper'

describe "calculator" do
	let(:value1) { Calculator.new}
	let(:value2) { Calculator.new }
	
	it "should perform addition" do 
		expect(value1.add(4)).to eq(4)
	end
	it "should perform subtract" do 
		expect(value1.subtract(2)).to eq(2)
	end
	it "should perform multiply" do 
		expect(value1.multiply(4)).to eq(8)
	end
	it "should perform division" do 
		expect(value1.divide(4)).to eq(0)
	end
	it "should perform division2" do 
		expect(value2.divide(0)).to eq(0)
	end
	it "should perform cancel" do 
		expect(value1.cancel).to eq(0)
	end
	it "should perform exit" do 
		expect(value1.exit).to eq(nil)
	end
end
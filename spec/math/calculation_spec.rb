require 'spec_helper'

describe "calculator" do
	let(:value1) { Calculator.new}
	let(:value2) { Calculator.new(-4)}
	let(:value3) { Calculator.new(4)}
	let(:value4) { Calculator.new(8)}
	
	it "should perform addition" do 
		expect(value1.add(4)).to eq(4)
	end
	it "should perform subtract" do 
		expect(value1.subtract(2)).to eq(-2)
	end
	it "should perform multiply" do 
		expect(value1.multiply(4)).to eq(0)
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
	it "should perform square" do 
		expect(value2.square).to eq(16)
	end
	it "should perform squareroot" do 
		expect(value3.square_root).to eq(2)
	end
	it "should perform negation" do 
		expect(value2.negative).to eq(4)
	end
	it "should perform cube" do 
		expect(value2.cube).to eq(-64)
	end
	it "should perform cube_root" do 
		expect(value4.cube_root).to eq(2)
	end
	it "should return absolute value" do 
		expect(value2.absolute).to eq(4)
	end
end
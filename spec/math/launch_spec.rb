require 'spec_helper'
describe 'launch' do


  it "test the launch" do
  	
  	calci = Parser.new
  	allow(Parser).to receive(:new) { calci }
  	allow(Kernel).to receive(:gets) { "add 5" }
  	expect(calci).to receive(:parsing).with("add 5")

  	app = Launch.new
  	app.check
  	
  end

end 


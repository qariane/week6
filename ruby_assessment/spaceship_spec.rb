

require_relative 'spaceship'

describe Spaceship do
  let(:spaceship) { Spaceship.new("USS Enterprise","200,000 mph", "Namibia")}

  it "disable the shield" do 
  	expect(spaceship.disable_shield) == "turn off shield"
   end 


   it "enable the shield" do 
  	expect(spaceship.enable_shield) == ("turn on shield")
   end 

 end

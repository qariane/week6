class Spaceship

	def initialize(name, speed)
		@name = name
		@speed = speed  
	end 

	def show
   puts "#{@name} has a max speed of #{@speed} miles per hour"
    end
     def ship
    puts "#{@name} has a max speed of #{@speed} miles per hour"
     end
end










spaceship = Spaceship.new("USS Enterprise", 200000)
spaceship.show
spaceship = Spaceship.new("HMS Andromeda" , 108277)
spaceship.ship
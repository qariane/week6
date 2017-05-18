class Spaceship
	attr_accessor :name, :location, :item, :inventory
	attr_reader :speed 


	def initialize(name, speed, location)
		@name = name
		@speed = speed 
		@location = location
		@item = item 
		@inventory = {}
	end 

	def show
   puts "#{@name} has #{@speed} miles per hour"
    end

     def ship
    puts "#{@name} has #{@speed} miles per hour"
     end

     def disable_shield 
      puts "Shield is turned off!"
  	end

      def enable_shield
      puts "Shield is turned on!"
     end

     def warp_to(location)
     	puts "Traveling at #{@speed} to #{@location}!"
     	@location = location
      end 

    def tractor_beam(item)
    	disable_shield

    	item = item.split('')
    	weight = 0

    	item.each do |let|
         weight += let.ord 
        end

	if weight > 500 
  	enable_shield
  	@inventory[@location] = @item
  	return true
	else
  	return false
	end

 
 
   def pick_up(description, location)
   	   warp_to
   end
  end
end
spaceship = Spaceship.new("USS Enterprise", "200,000", "US")
spaceship.show
turn = Spaceship.new("HMS Andromeda" , "108,277", "US")
turn.ship
spaceship.disable_shield
turn.enable_shield

turn.warp_to("Iowa")

 turn.tractor_beam("cow")
 


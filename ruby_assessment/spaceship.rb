class Spaceship
  attr_accessor :name, :location, :inventory, :str_item  
  attr_reader :speed, :print_inventory
    
  def initialize (name, max_speed, location)
    @name = name
    @speed = max_speed
      @location = location
      @inventory = {}
      @str_item = str_item
      @print_inventory = print_inventory 
    end

  #def display  
    #puts "my ship is #{@name} and has a max speed of  #{@speed} miles per hour"  
  #end  

    #def second 
    #puts "my ship is #{@name} and has a max speed of  #{@speed} miles per hour"  
    #end

   def disable_shield
    puts "turn off shield"
   end

   def enable_shield
    puts "turn on shield"
   end 

   def warp_to(location)
    puts "Traveling at #{@speed} to #{@location}!"
    @location = location
   end

   def tractor_beam(str_item)
      disable_shield

      str_item = str_item.split('')
    weight = 0

    str_item.each do |let|
      weight += let.ord 
  end

  if weight > 500 
      enable_shield
      @inventory[@location] = str_item
      return true
  else
      return false
  end
  end 

  def pickup (str_item, location)
    warp_to(location)
      tractor_beam(str_item)
  end 

  def print_inventory
      #str_item = str_item.squeeze(' ')
    inventory = @inventory
        p inventory 
  end  
 
end

=begin
  def initialize
    @items = []
  end
  def add(item)
    @items <<(item)
  end

  
end
inventory = inventory.new


=end














=begin

#Driver code 
uss_enterprise = Spaceship.new("USS Enterprise","200,000 mph", "Namibia")

hms_andromeda = Spaceship.new("HMS Andromeda", "108,277 mph", "Mars")
#space.second
uss_enterprise.disable_shield
#uss_enterprise.enable_shield
#hms_andromeda.disable_shield
hms_andromeda.enable_shield
uss_enterprise.warp_to("Namibia")
hms_andromeda.warp_to("Mars")
#uss_enterprise.tractor_beam("cow")
uss_enterprise.tractor_beam("elephant")
hms_andromeda.tractor_beam("cow")
hms_andromeda.pickup("cow", "Canada")
hms_andromeda.pickup("pig", "US")
uss_enterprise.pickup("whale", "France")
uss_enterprise.pickup("chicken", "Mexico")
uss_enterprise.print_inventory

=end 

   


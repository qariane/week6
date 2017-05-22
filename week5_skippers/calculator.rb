def calculator (integer1, operator, integer2)
   if operator == '+'
     return integer1 + integer2
   elsif operator == '-'
     return integer1 - integer2
   elsif operator == '*'
     return integer1 * integer2
   elsif operator == '/'
     return integer1 / integer2
   end
 end
 
p calculator(3, '+', 4)

p calculator(3, '-', 4)

p calculator(3, '*', 4)

p calculator(3, '/', 4)

#user interface
puts " Welcome to your free online calculator. Everybody needs a calculator at some point."


def recurs_calc
  puts "Please enter two digits separated by operation you would like to calculate. Type 'done' to exit."
  input = gets.chomp.split(' ')

  if input[1] == "+"
    puts input[0].to_i + input[2].to_i
    recurs_calc
  elsif input[1] == "-"
    puts input[0].to_i - input[2].to_i
    recurs_calc
  elsif input[1] == "*"
    puts input[0].to_i * input[2].to_i
    recurs_calc
  elsif input[1] == '/'
    puts input[0].to_f / input[2].to_i
    recurs_calc
  elsif input[0] == 'done'
    exit
  else
    puts 'please enter two numbers with SPACES i.e. 1 + 1 then enter'
    recurs_calc
  end
end
recurs_calc 
	

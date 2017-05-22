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

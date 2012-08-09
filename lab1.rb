#!/bin/env ruby

#File: lab1.rb
#NAME: Walter Scott Martin
#SID : 909939685
#Assignemnt: Lab 1
#Comments: 


the_string = <<-HERE 
               this string has leading space and too    MANY tabs and sPaCes betweenX/n
   the indiVidual Words in each Line.X
  each Line ends with a accidentally  aDDED  X.X
            in this lab you wilL WRITE code that "sAnITizES" this string by normalizingX
   ("normalizing" means   capitalizing sentences   and setting otherX
  characters to lower case)     and removes in       the extra spaces between WOrds.X
HERE

# 5.1.1 Squeeze
the_string.squeeze(" "){|a| puts a}

#5.1.2 Downcase
the_string.downcase(){|a| puts a}

#5.1.3 Upcase
the_string.upcase(){|a| puts a}

#5.1.4 Capitalize
 array = the_string.split(/\n/)
 array.each {|x| puts x.strip.capitalize}
 
#5.1.5 Removing The Ending ’X’

puts the_string.gsub(/'X'/, '')
 
 #5.1.6 Each_byte

array.each{|x| x.each_byte{|x| puts x}}

#5.1.7 Split

array = the_string.split(/\W/)
puts array

#5.1.8 Crypt

puts the_string.crypt('zz')

#5.1.9 Replace The Contents Of A String Object


#5.1.10 Inspect

 The Kernel#inspect method shows a printable version of any object, with special charcters escaped. Print the output of 5.1.9 using the_string.inspect.
 
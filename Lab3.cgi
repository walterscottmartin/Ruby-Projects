#!/usr/local/bin/ruby
# Name: Walter Scott Martin
# SID: @00094482
# Due Date: 2/20/2011

puts "Content-type: text/html"
puts

the_string = <<-HERE 
               this string has leading space and too    MANY tabs and sPaCes betweenX/n
   the indiVidual Words in each Line.X
  each Line ends with a accidentally  aDDED  X.X
            in this lab you wilL WRITE code that "sAnITizES" this string by normalizingX
   ("normalizing" means   capitalizing sentences   and setting otherX
  characters to lower case)     and removes in       the extra spaces between WOrds.X
HERE

array = the_string.scan(/./m)

a = array[0..(array.length/3)]
b = array[(array.length/3)..(array.length)]
c = a & b
d = a - b
e = b - a
f = a[-1]
g = b[-1]
h = a.fetch(0) # or a.first()
i = b.fetch(0) # or b.first()
j = b.reject{|x| x==" "}
k = b.each{|x| x.upcase}
while ((a.length-100) != (a.length)

puts <<HTML
<!DOCTYPE html> 
<html>
  <head>
    <title>The_string</title>
    <style type="text/css">
        body {background-color:#f7f7f7;color:#333;font-family:serif;font-size:16px;}
        h1 {color:#c00}
        
    </style>
    <pre style="white-space: pre-wrap;word-wrap: break-word">
  </head>
  <body>
  
  
 <p>
     The String is:  #{the_string}  
 </p>
 <p>
     The first 1/3 of the array is: #{a}
 </p>
 <p>
     The second 2/3 of the array is: #{b}  
 </p> 
 <p>
     Elements Common to them both are : #{c}
 </p>  
 <p>
  The Difference Between Parts One and Two : #{d}
 </p>
 <p>
  The Difference Between Parts Two and One : #{e}
 </p>
 <p>
  Elements at the End of Parts One and Two :
  One: "#{f}"
  Two: "#{g}"
 </p>
 <p>
  Elements at the Front of Parts One and Two :
  One: "#{h}"
  Two: "#{i}"
</p>
  <p>
  Part Two, Upcased With White Space Removed, Inserted Into One At Index 100: 
  
  </p>
  
  
  
  </body>
</html>
  


HTML


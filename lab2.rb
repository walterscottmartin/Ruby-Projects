#!/usr/local/bin/ruby 
# SCRIPT: hello_world.cgi 
# CREATOR: Walter Scott Martin 
puts "Content-type: text/html" 

puts 

puts <<HTML 
  <!DOCTYPE html> 
  <html>
    <head>
      <title>A First Ruby CGI Script</title>
      <style type="text/css">
          body {background-color:#f7f7f7;color:#333;font-family:serif;font-size:16px;}
          h1 {color:#c00}
      </style>
    </head>
    <body>
       <blockquote>
  <h2>Oliver Twist</h2>
  Although I am not disposed to maintain that the being born in a workhouse, <br />is in itself the most fortunate and enviable circumstance that can possibly <br />befall a human being, I do mean to say that in this particular instance, <br />it was the best thing for Oliver Twist that could by possibility have <br />occurred. The fact is, that there was considerable difficulty in inducing <br />Oliver to take upon himself the office of respiration,— a troublesome <br />practice, but one which custom has rendered necessary to our easy existence; <br />and for some time he lay gasping on a little flock mattress, rather unequally <br />poised between this world and the next: the balance being decidedly in <br />favour of the latter. Now, if, during this brief period, Oliver had been <br />surrounded by careful grandmothers, anxious aunts, experienced nurses, <br />and doctors of profound wisdom, he would most inevitably and indubitably <br />have been killed in no time. There being nobody by, however, but a pauper <br />old woman, who was rendered rather misty by an unwonted allowance of beer; <br />and a parish surgeon who did such matters by contract; Oliver and Nature <br />fought out the point between them. The result was, that, after a few struggles, <br />Oliver breathed, sneezed, and proceeded to advertise to the inmates of the <br />workhouse the fact of a new burden having been imposed upon the parish, by <br />setting up as loud a cry as could reasonably have been expected from a male <br />infant who had not been possessed of that very useful appendage, a voice, <br />for a much longer space of time than three minutes and a quarter.  <br /><br />(from Oliver Twist by Charles Dickens) <br />
       </blockquote>
    </body>
  </html> 

HTML

#!/usr/local/bin/ruby 
# SCRIPT: hello_world.cgi 
# CREATOR: Walter Scott Martin 
puts "Content-type: text/html" 

puts 

puts <<HTML 
  <!DOCTYPE html> 
  <html>
    <head>
      <title>Oliver Twist</title>
      <style type="text/css">
          body {background-color:#f7f7f7;color:#333;font-family:serif;font-size:16px;}
          h1 {color:#c00}
      </style>
    </head>
    <body>
       <blockquote>
  <h2>Oliver Twist</h2>
  
  #{File.read("oliver_twist.txt")}
  
  <br />(from Oliver Twist by Charles Dickens) <br />
    
       </blockquote>
    </body>
  </html> 

HTML

#!/usr/local/bin/ruby 
# SCRIPT: query_string.cgi 
# CREATOR: Walter Scott Martin
# The CGI class provide methods to handle CGI request, including 
# the CGI::params, which contains all of the request data. 

require 'cgi' 

cgi = CGI.new 

# Check to see if a link has been clicked 
if cgi.params['color'].empty? 
background = 'blue' 
color = 'gold' 
else 
color = cgi.params['color'][0]
background = cgi.params['background'][0]
end 
puts "Content-type: text/html" 
puts 

# This blank line is mandatory 

# Start printing the text 
puts <<HTML 

<!DOCTYPE html> 
<html> 
<head> 
<title>A First Ruby CGI Script</title> 
<style type="text/css"> 
body { background-color:#{background}; 
color:#{color}; width:800px; margin:2em auto; 
padding:2em; font-family:Helvetica,Arial,Verdana,sans-serif; 
font-size:18px;} 
h1 {color:#c00} 
a {color:cyan;} 
</style> 
</head> 
<body> 
<h1>QUERY_STRING EXAMPLE</h1>


<p> This is an example of a Ruby CGI script that can process a 
request's QUERY_STRING. The links below each have a QUERY_STRING encoded. 
When a user clicks on a link, the browser submits the QUERY_STRING. </p> 

<p><a href="?color=red&background=orange">RED/ORANGE</a></p> 

<p><a href="?color=blue&background=gray">BLUE/GRAY</a></p> 

<p><a href="?color=lightgreen&background=black">GREEN/BLACK</a></p> 

<p><a href="?color=gold&background=blue">GOLD/BLUE</a></p> 
</body> 
</html>


HTML

#!/usr/local/bin/ruby 
# SCRIPT: query_string.cgi 
# CREATOR: Walter Scott Martin
puts "Content-type: text/html"

require "cgi"

cgi = CGI.new("html3")  # add HTML generation methods
name = cgi['user_name']
email = cgi['email']

puts
puts <<HTML 

<!DOCTYPE html> 
<html> 
 <head>
 <h1>Form Handling with Ruby CGI</h1>
  
 <title>form_test.cgi</title> 
 <style type="text/css"> 
  body { background-color:#{background}; 
  color:#{color}; width:800px; margin:2em auto; 
  padding:2em; font-family:Helvetica,Arial,Verdana,sans-serif; 
  font-size:18px;} 
  h1 {color:#c00} 
  a {color:cyan;} 
 </style> 
 <body>
 
 
 <form action="" method="post" accept-charset="utf-8"> 
 <p> 
 <label for="User Name" style="width:100px;float:left">User Name</label> 
 <input type="text" name="user_name" value="" id="user_name"> 
 </p> 
 <p> 
 <label for="email" style="width:100px;float:left">Email</label> 
 <input type="text" name="email" value="" id="email"> 
 </p>
 <p>
 <input type="submit" value="Continue &rarr;">
 </p> 
 </form>
 
 <p>Welcome #{user_name} . Its good to see you again</p>
 <p>May I send emails to you at your email address : #{email}</p>
 </body>
 </html>
HTML

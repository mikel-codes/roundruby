require 'open-uri' # req this module to open webpage
wbg = open("http://www.facebook.com/login.php") # this downloads the webpage
output = File.open("login.html", "w") # set a file to write its contents )create if non-existent(
begin
while line = wbg.gets
  output.puts line
end

rescue Exception
  STDErr.puts "Failed to download page #{$!}"
  output.close   # finally close this file by terminating file handler
  File.delete("login.html")
  raise
end

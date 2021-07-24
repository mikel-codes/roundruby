require 'open-uri'
file_name = %w{login.php}
file_link = "http://www.facebook.com/#{file_name}"
begin
  webpage = open(file_link)
  output = File.open(file_name, 'w')
  while line = webpage.gets
    output.puts line
  end
  output.close
rescue Exception => boom
  STDErr.puts "Failed to download page . #{file_name} #{$!}"
  output.close
  File.delete(file_name)
  raise

end

def smtp_server
  @esmtp = true
  begin
    if @esmtp then @command.elho(helloword)
    else @command.helo(helloword)
    end
    rescue ProtocolError
      if @esmtp then
        @esmtp = false
    end
      retry
    else
      raise 
end

require 'gserver'
class Logger < GServer
  def initialize
    super(8080)
    puts "server started on 8080"
  end
  def serve(client)
    client.puts get_end_of_logFile
  end

  private 
  def get_end_of_logFile
    File.open("/root/Desktop/Npower") do |log|
      log.seek(IO::SEEK_CUR)
      log.gets
      log.read
    end
  end
end


server = Logger.new()
server.start.join

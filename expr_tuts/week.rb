#!/usr/bin/env ruby -w
module Week
  FIRST_DAY="Sunday"
  def Week.weeks_in_month
    puts "There are four weeks in a month"
  end
  def Week.weeks_in_ayear
    puts "52 weeks in a year"
  end
  def Week.fileOpener
    File.open("ordinal") do|x|
      begin
        while ((line = x.readline()) != nil)
          puts "line value is #{line}"
        end
      rescue EOFError => boom
        boom = "___End of line reached for file____"
        STDERR.puts(boom) 
      end
      nil
    end
  end
end




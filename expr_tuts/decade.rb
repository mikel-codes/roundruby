$LOAD_PATH << '.'
require "week"

class Decade
  include Week
  no_of_yrs = 10
  def no_of_mths
    puts "starting with first_day of week as #{Week::FIRST_DAY}"
    puts "total months in 10yrs  is #{10*12}"
  end
end

d1 = Decade.new
puts Week::FIRST_DAY
puts Week.weeks_in_month
puts Week.weeks_in_ayear
puts d1.no_of_mths
puts
puts "file line reader"
Week.fileOpener
 
 90.downto(0) do|i|
   num = i.to_s
   y = Integer(num[0])
   x = Integer(num[1])
 puts y.to_s + x.to_s

   for z in 1..10
     x = x + 1
          if x == 10 then
         y += 1
         break
          end

     if y == 0 and x == 0 then
       print "Done"
       break
     end
     
     sleep 0.3
     redo
   end
 end
   

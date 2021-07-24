#!/usr/bin/env ruby -w
=begin
this is radio typed ruby code
=end

$global_variable = 88
puts "Hello world , this is dot.com"
END{
  puts "This is the program's terminating code"
}
BEGIN{
  puts "Starting output for ***#{__FILE__}***"
  puts 
  puts "initializes code to be be run first"
}
module Foo
  COUNTER = 0
  ::COUNTER = 9
  puts ::COUNTER
  puts Foo::COUNTER 
end

class C1
  @@unique_class = "class 1"
  def print_global
    puts "this method says the value of global in class C1 is #$global_variable"
  end
end

class C2
  @@unique_class = "class 2"
  VAR = 1; VAR2 = 2
  def print_global
    puts "#@@unique_class print global variable as #$global_variable"
  end
  
  def showOff
    puts "The constants in this method are #{VAR} and #{VAR2}"
    if __LINE__ == 33
      puts "Just crossed a highlighted program line"
    end
  end
  def explain_Types 
    logos = [123, 1_123, 0b1101, -500, 0x0fe, -500, 0457, "#{?a}", ?\n, 12346758901234567890]
    @count = 0
    for i in logos
      puts "the class types for item #{@count} is #{i.class}"
      puts "the corresponding value is #{i}"
      @count += 1
    end
    if defined? check
      puts "the class variable has been checked"
    elsif defined? yield
      yield
    else
      check = "undefined"
      puts "could not find #{check}"
    end
  end
end

c = C1.new()
c2 = C2.new()
c.print_global
c2.print_global
c2.showOff
c2.explain_Types { puts "Hello world from explain_Types"}

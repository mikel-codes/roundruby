class FileReader < File
  #define a singleton
  #unique only to this method
  def self.open_and_process(*args)
    f = FileReader.open(*args)
    yield f
    f.close
  end
end

FileReader.open_and_process("/root/justice.py") do |file|
  while line = file.gets
    puts line
  end
end

class ProcExample
  attr :stored_proc #symbol referencing the protocol
  #first instance method 
  #ampersand creates the proc object by referencing a code block associated to
  #the variable passed in the method
  def pass_in_block(&action)
    @stored_proc = action #retreives d called proc object stored in action
  end

  #the second instance method
  def use_proc_object(parameter)
    @stored_proc.call(parameter)
  end

  def block_closures(val)
    lambda {|n| val * n}
    proc1  = -> args{ puts "Hello world , this is #{args}"}
  end
end


procsEg = ProcExample.new
procsEg.pass_in_block {|p| puts "The parameter input to this block is #{p}"}
procsEg.use_proc_object(99)

puts "Note call invokes the Proc Object to action or more or less executes code in proc object"
p procsEg.block_closures(9).call(8)


def a_while(body, &cond)
  while body.call
    cond.call
  end
end
a = 0
a_while -> {a < 2} do
  puts a
  a += 1
end

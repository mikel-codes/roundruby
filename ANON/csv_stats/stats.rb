class Accounts
  attr :accountA
  attr_accessor :balance, :cleared_balance
  protected :cleared_balance

  def initialize(accountA,  balance)
    @accountA = accountA
    @balance = balance
  end

  def comparison_balance_to?(other)
    @cleared_balance < other.cleared_balance
  end
end

class Transaction
  attr_accessor :account_y, :account_x
  def initialize(account_a, account_b)
    @account_y = account_a
    @account_x = account_b
  end
  
  def Account(name)
    return name
  end
    
  private 
  def debit(account, amount)
    Account(account).balance -= amount
    puts "Transaction Type:<Debit> Transferred  #{amount} to #{account.to_s}"
  end

  def credit(account, amount)
    Account(account).balance += amount
    puts "Transaction Type:<Credit> Received #{amount} from #{account.to_s}"
  end

  public 
  def transfer(amount)
    debit(@account_y, amount)
    credit(@account_x, amount)
  end
end

$savings; $balanced
account1 = Accounts.new($savings=100, $balanced=23)
account2 = Accounts.new($savings=120, $balanced=10)

bizness = Transaction.new(account1, account2)
bizness.transfer(100)

def fib_up_to(max)
  i1, i2 = 1, 1
  while i1 <= max
    yield i1
    i1, i2 = i2, i1+i2
  end
end


fib_up_to(1000) {|f| print f, " "}
puts

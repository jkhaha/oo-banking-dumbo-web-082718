
class BankAccount

  attr_reader :name
  attr_accessor :balance, :status

  def initialize(name, balance= 1000, status = "open")
    @name = name
    @balance = balance
    @status = status
  end

  def balance=(amount)
    @balance = amount
  end
  #lets us see our balance, writer method

  def deposit(num)
    @balance += num
  end


  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
    @status == "open" && @balance > 0
  end

  def close_account
    @status = "closed"
  end

end

class Account
attr_reader :balance, :statement
  def initialize
    @balance = 0
    @statement = { 1 => "date || credit || debit || balance" }
  end

  def deposit(sum)
    @balance += sum
  end

  def withdrawal(sum)
    @balance -= sum
  end

end

class Account
attr_reader :balance, :statement, :current_time
  def initialize
    @balance = 0
    @statement = { 1 => "date || credit || debit || balance" }
    @current_time = Time.now.strftime("%d/%m/%Y")
  end

  def deposit(sum)
    @balance += sum
  end

  def withdrawal(sum)
    @balance -= sum
  end

  def print_statement
    @statement.each do |key, value|
      puts value
    end
  end
end

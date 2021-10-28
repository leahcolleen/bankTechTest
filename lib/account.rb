require_relative 'statement'
require_relative 'transaction'

class Account
  attr_reader :balance, :transactions

  def initialize (statement = Statement.new, transaction = Transaction)
    @balance = 0
    @transactions = []
    @statement = statement
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(value)
    @balance -= value
  end

  def history
    @statement.print(@transactions)
  end

  def save(transaction)
    @transactions << transaction
  end

end
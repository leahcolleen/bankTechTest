#stores details of each transaction 

class Transaction

  attr_reader :debit, :credit, :date, :balance

  def initialize
    @debit = debit
    @credit = credit
    @date = date
    @balance = balance

  end
end
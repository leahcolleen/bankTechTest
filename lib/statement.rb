# prints a list of transactions

class Statement

  def print(transactions)
    @transactions = transactions
    puts(statement_titles + print_transactions)
  end

  # private

  def statement_titles
    "date || credit || debit || balance\n"
  end

  def print_transactions
    output = @transactions.reverse.map do |transaction|
      "#{transaction.date} || #{format(transaction.credit)} || "\
      "#{format(transaction.debit)} || #{format(transaction.balance)}\n"
    end
    output.join('')
  end

  def format(num)
    num === 0 ? "" : '%.2f' % num
  end
  

end
# frozen_string_literal: true

# stores details of each transaction

require 'statement'

describe Statement do
  let(:statement) { Statement.new }
  let(:transactions) { [transaction1, transaction2] }
  let(:transaction1) do
    double(:transaction1, credit: '30.00', debit: '0.00',\
                          date: '28-10-21', balance: '30.00')
  end
  let(:transaction2) do
    double(:transaction2, credit: '0.00', debit: '10.00',\
                          date: '29-10-21', balance: '20.00')
  end

  describe '#print' do
    it 'prints an array in the set format' do
      text = "date || credit || debit || balance\n"\
      "29-10-21 || 0.00 || 10.00 || 20.00\n"\
      "28-10-21 || 30.00 || 0.00 || 30.00\n"

      expect { statement.print(transactions) }.to output(text).to_stdout
    end
  end
end

require 'statement'

describe Statement do

  let(:statement) { Statement.new } 
  let(:transactions) { [transaction1, transaction2] }
  let(:transaction1) { double(:transaction1, debit: "0.00", credit: "30.00",\
                        date: "28-10-21", balance: "30.00")
  }
  let(:transaction2) { double(:transaction2, debit: "10.00", credit: "0.00",\
                        date: "29-10-21", balance: "20.00")
  }

  describe '#print' do
    it 'prints an array in the set format' do
      text = 'date || credit || debit || balance'\
      '15-09-21 || 10.00 || 0.00 || 10.00'\
      '16-09-21 || 100.00 || 0.00 || 110.00'
    expect {statement.print(transactions) }.to output(text).to_stdout
    end
  end
end
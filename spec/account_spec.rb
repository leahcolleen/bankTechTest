require 'account'

describe Account do
  subject (:account) { described_class.new }

    # it 'checks the account has balance' do
    #   expect(account.balance).to eq(0)
    # end

  describe '#deposit(amount)' do
    it 'increases the balance' do
      expect { account.deposit(1) }.to change { account.balance }.by(1)
    end
  end

  describe '#withraw' do
    it 'decreases the balance' do
      account.deposit(30)
      expect { account.withdraw(1) }.to change { account.balance }.by(-1)
    end
  end


end
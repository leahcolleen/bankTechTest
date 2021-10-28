# frozen_string_literal: true

require 'account'

describe Account do
  subject(:account) { described_class.new }
  let(:account) { Account.new(statement) }
  let(:statement) { double(:statement) }

  it 'checks the account has balance' do
    expect(account.balance).to eq(0)
  end

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

  describe '#history' do
    it 'prints the transaction history' do
      expect(statement).to receive(:print)
      account.history
    end
  end
end

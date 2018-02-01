require 'date'

class Atm
  attr_accessor :funds

  def initialize
      @funds = 1000
  end

  def withdraw(amount, account)
    case
    when insuffient_funds_in_account?(amount, account)
      return
    else
      perform_transaction(amount, account)
    end
  end

private

  def insuffient_funds_in_account?(amount, account)
    amount > account.balance
  end

  def perform_transaction(amount, account)
    @funds -= amount
    account.balance = account.balance - amount
    { status: true, message: 'success', date: Date.today, amount: amount}
  end
end

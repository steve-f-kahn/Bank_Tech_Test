class Account

  attr_reader :transactions
  def initialize
    @transactions = []
    @balance = 0.00
  end


  def add(value, date)
    @balance += value
    transaction = {date: date, credit: '%.2f' % value, debit: "", balance: '%.2f' % @balance}
    @transactions.push(transaction)
  end

  def subtract(value, date)
    @balance -= value
    transaction = {date: date, credit: "", debit: '%.2f' % value, balance: '%.2f' % @balance}
    @transactions.push(transaction)
  end
end

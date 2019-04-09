require_relative "display"

class Bank
  def initialize
    @accounts = []
  end

  def openAccount()
    @accounts.push(Account.new)
    @accounts.length
  end

  def deposit(account, value, date = Time.now.strftime("%d/%m/%Y"))
    @accounts[account-1].add(value, date)
  end

  def withdraw(account, value, date = Time.now.strftime("%d/%m/%Y"))
    @accounts[account-1].subtract(value, date)
  end

  def printStatement(account)
      puts Display.formatStatement(@accounts[account-1].transactions)
  end
end

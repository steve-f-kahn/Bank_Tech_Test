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
    newline = ["date", "credit", "debit", "balance"].join(" || ")
    output = []
    output.push(newline)
    @accounts[account-1].transactions.reverse.each do |transaction|
      newline = []
      transaction.each_value do |string|
        newline.push(string)
      end
      output.push(newline.join(" || "))
    end
    puts output.join("\n")
  end
end

require 'bank'
require 'account'

describe "Client checks there bank statemnt after transactions" do
  it "Has a statement shown after transactions" do
    bank = Bank.new
    account = bank.openAccount
    bank.deposit(account, 1000, "10/01/2012")
    bank.deposit(account, 2000, "13/01/2012")
    bank.withdraw(account, 500, "14/01/2012")

    string = "date || credit || debit || balance\n14/01/2012 ||  || 500.00 || 2500.00\n13/01/2012 || 2000.00 ||  || 3000.00\n10/01/2012 || 1000.00 ||  || 1000.00\n"
    expect{bank.printStatement(account)}.to output(string).to_stdout
  end
end

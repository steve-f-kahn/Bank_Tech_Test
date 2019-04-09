require "bank"
describe Bank do

  before(:each) do
    @bank = Bank.new
  end

  it "Can open a new account" do
    expect(@bank.open_account).to eq 1
  end

  it "Can open a second account" do
    @bank.open_account
    expect(@bank.open_account).to eq 2
  end

  it "Can deposit money into an account and be seen in a statment" do
    account = @bank.open_account
    @bank.deposit(account, 500, "14/01/2012")
    expect { @bank.print_statement(account) }.to output("date || credit || debit || balance\n14/01/2012 || 500.00 ||  || 500.00\n").to_stdout
  end

end

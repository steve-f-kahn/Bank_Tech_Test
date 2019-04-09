require "account"

describe Account do
  before(:each) do
    @account = Account.new
  end
  it "creates an empty transaction history when made" do
    expect(@account.transactions).to eq([])
  end

  context "Add to account" do
    it "Add 500" do
      @account.add(500, "14/01/2012")
      expect(@account.transactions).to eq([{ date: "14/01/2012", credit: "500.00", debit: "", balance: "500.00" }])
    end

    it "Add 300" do
      @account.add(300, "13/01/2012")
      expect(@account.transactions).to eq([{ date: "13/01/2012", credit: "300.00", debit: "", balance: "300.00" }])
    end

    it "Add 200.10" do
      @account.add(200.10, "12/01/2012")
      expect(@account.transactions).to eq([{ date: "12/01/2012", credit: "200.10", debit: "", balance: "200.10" }])
    end
  end

  context "Subtract from account" do
    before(:each) do
      @account.add(500, "14/01/2012")
    end

    it "Subtracts 500" do
      @account.subtract(500.00, "14/01/2012")
      array = [
               { date: "14/01/2012", credit: "500.00", debit: "", balance: "500.00" },
               { date: "14/01/2012", credit: "", debit: "500.00", balance: "0.00" }]
      expect(@account.transactions).to eq(array)
    end

    it "Subtracts 300" do
      @account.subtract(300.00, "14/01/2012")
      array = [
               { date: "14/01/2012", credit: "500.00", debit: "", balance: "500.00" },
               { date: "14/01/2012", credit: "", debit: "300.00", balance: "200.00" }]
      expect(@account.transactions).to eq(array)
    end

    it "Subtracts 200.10" do
      @account.subtract(200.10, "14/01/2012")
      array = [
               { date: "14/01/2012", credit: "500.00", debit: "", balance: "500.00" },
               { date: "14/01/2012", credit: "", debit: "200.10", balance: "299.90" }]
      expect(@account.transactions).to eq(array)
    end
  end

end

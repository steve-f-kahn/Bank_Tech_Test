require "display"

describe Display do
  it "formats an array of hashes and outputs them" do
    array = [{date: "14/01/2012", credit: "", debit: "500.00", balance: "500.00"}]
    string = "date || credit || debit || balance\n14/01/2012 ||  || 500.00 || 500.00"
    expect(Display.formatStatement(array)).to eq string
  end
end

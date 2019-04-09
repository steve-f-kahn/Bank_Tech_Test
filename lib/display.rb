class Display
  def self.formatStatement(array)
    newline = ["date", "credit", "debit", "balance"].join(" || ")
    output = []
    output.push(newline)
    array.reverse.each do |transaction|
      newline = []
      transaction.each_value do |string|
        newline.push(string)
      end
      output.push(newline.join(" || "))
    end
    output.join("\n")
  end
end

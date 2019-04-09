class Display
  def self.format_statement(array)
    newline = ['date', 'credit', 'debit', 'balance'].join(' || ')
    output = []
    output.push(newline)
    array.reverse.each do |transaction|
      newline = []
      transaction.each_value { |string| newline.push(string) }
      output.push(newline.join(' || '))
    end
    output.join("\n")
  end
end

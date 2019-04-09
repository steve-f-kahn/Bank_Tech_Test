class Display

  HEADER = ['date', 'credit', 'debit', 'balance'].join(' || ')

  def self.format_statement(array)
    output = [HEADER]
    array.reverse.each do |transaction|
      output << newline(transaction)
    end
    output.join("\n")
  end

  def self.newline(transaction)
    newline = []
    transaction.each_value { |string| newline << string }
    newline.join(' || ')
  end

end

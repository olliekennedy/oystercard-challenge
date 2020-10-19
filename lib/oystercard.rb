class Oystercard
  attr_reader :balance
  def initialize
    @balance = 0
  end

  def top_up(amount)
    @balance += amount
    puts "your new balance is #{@balance}"
  end
end

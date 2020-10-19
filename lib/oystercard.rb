class Oystercard
  attr_reader :balance
  MAX_BALANCE = 90
  def initialize
    @balance = 0
  end

  def top_up(amount)
    raise("Max balance is £#{MAX_BALANCE}!") if balance + amount > MAX_BALANCE

    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end
end

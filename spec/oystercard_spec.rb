require 'oystercard'

RSpec.describe Oystercard do
  describe '#balance' do
    it " has balance of zero by default " do
      card = Oystercard.new
      expect(card.balance).to eq 0
    end
  end
  describe '#top_up' do
    it " updates balance after topping up" do
      subject.top_up(10)
      expect(subject.balance).to eq 10
    end
    it 'raises an error if the topup takes the balance above max balance' do
      maximum_balance = Oystercard::MAX_BALANCE
      subject.top_up(maximum_balance)
      expect { subject.top_up(1) }.to raise_error("Max balance is £#{Oystercard::MAX_BALANCE}!")
    end
  end
  describe '#deduct' do
    it 'deducts balance' do
      subject.top_up(50)
      expect{ subject.deduct(3) }.to change{ subject.balance }.by(-3)
    end
  end

end

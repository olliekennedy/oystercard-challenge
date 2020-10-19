require 'oystercard'

RSpec.describe Oystercard do
  describe '#balance' do
    it " has balance of zero by default " do
      card = Oystercard.new
      expect(card.balance).to eq 0

    end
  end
  describe '#top_up' do
    it {is_expected.to respond_to(:top_up).with(1).argument}
    it " updates balance after topping up" do
      subject.top_up(10)
      expect(subject.balance).to eq 10
    end

  end

end

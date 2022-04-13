require "spec_helper"

RSpec.describe do
  it "handles lowest day is last day/highest day is first day" do
    expect(stock_picker([5, 4, 3, 2, 1])).to eq([0, 0])
  end

  it "returns the best day to buy and sell" do
    expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1, 4])
  end
end
require "spec_helper"

RSpec.describe do
  it "sorts an array of numbers" do
    expect(bubble_sort([4,3,78,2,0,2])).to eq([0,2,2,3,4,78])
  end

  it "sort an empty array" do
    expect(bubble_sort([])).to eq([])
  end

  it "sorts an array of one number" do
    expect(bubble_sort([1])).to eq([1])
  end
end
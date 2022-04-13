require "spec_helper.rb"

RSpec.describe do
  it "should return a hash" do
    expect(substrings("hello", ["ll"])).to be_a(Hash)
  end

  it "should return an empty hash if no matches" do
    expect(substrings("hello", ["zz"])).to eq({})
  end

  it "should work for a single word" do
    expect(substrings("hello", ["ll"])).to eq({"ll" => 1})
  end

  it "should work for multiple words" do
    expect(substrings("hello world, holla girl", ["ll"])).to eq({"ll" => 2})
  end

  it "should work for multiple words with multiple matches" do
    expect(substrings("hello world, holla girl", ["ll", "or"])).to eq({"ll" => 2, "or" => 1})
  end
end
require_relative "../caesar_cipher"

RSpec.describe "Caesar Cipher Tests" do

  context "shift_character lowercase" do
    it "shifts a character by 1" do
      expect(shift_character("a", 1)).to eq("b")
    end

    it "shifts a character by 0" do
      expect(shift_character("a", 0)).to eq("a")
    end

    it "shifts a character by 26" do
      expect(shift_character("a", 26)).to eq("a")
    end

    it "shifts a character by 27" do
      expect(shift_character("a", 27)).to eq("b")
    end
  end

  context "shift_character uppercase" do
    it "shifts a character by 1" do
      expect(shift_character("A", 1)).to eq("B")
    end

    it "shifts a character by 0" do
      expect(shift_character("A", 0)).to eq("A")
    end

    it "shifts a character by 26" do
      expect(shift_character("A", 26)).to eq("A")
    end

    it "shifts a character by 27" do
      expect(shift_character("A", 27)).to eq("B")
    end
  end

  context "shift_character symbols and numbers" do
    it "doesn't shift punctuation" do
      expect(shift_character("!", 1)).to eq("!")
    end

    it "doesn't shift numbers" do
      expect(shift_character("1", 1)).to eq("1")
    end
  end

  context "caesar_cipher" do
    it "shifts a string by 1" do
      expect(caesar_cipher("abc", 1)).to eq("bcd")
    end

    it "shifts a string by 0" do
      expect(caesar_cipher("abc", 0)).to eq("abc")
    end

    it "shifts a string by 26" do
      expect(caesar_cipher("abc", 26)).to eq("abc")
    end

    it "shifts a string by 27" do
      expect(caesar_cipher("abc", 27)).to eq("bcd")
    end

    it "shifts a string by -1" do
      expect(caesar_cipher("bcd", -1)).to eq("abc")
    end

    it "shifts a string with punctuation" do
      expect(caesar_cipher("abc, def!", 1)).to eq("bcd, efg!")
    end
  end

end
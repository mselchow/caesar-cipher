def shift_character(char, shift)
  shift %= 26
  if char.ord >= 65 && char.ord <= 90
    char = char.ord + shift > 90 ? char.ord + shift - 26 : char.ord + shift
  elsif char.ord >= 97 && char.ord <= 122
    char = char.ord + shift > 122 ? char.ord + shift - 26 : char.ord + shift
  end
  char.chr
end

def caesar_cipher(string, shift)
  cipher = string.each_char.map { |char| shift_character(char, shift) }.join
  cipher
end
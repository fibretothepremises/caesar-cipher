def caesar_cipher(string, shift_num)
  lowercase = ("a".."z").to_a
  uppercase = ("A".."Z").to_a
  array = string.split("")
  ciphered_array = array.map do |c|
    if lowercase.include?(c)
      shifted_index = (lowercase.index(c) + shift_num) % 26
      lowercase[shifted_index]
    elsif uppercase.include?(c)
      shifted_index = (uppercase.index(c) + shift_num) % 26
      uppercase[shifted_index]
    else
      c
    end
  end
  ciphered_string = ciphered_array.join("")
  p ciphered_string
end

caesar_cipher("What a string!", 5)
caesar_cipher("What a string!", 51)
caesar_cipher("What a string!", 52)
caesar_cipher("What a string!", -51)
caesar_cipher("What a string!", -52)
# > caesar_cipher("What a string!", 5)
#   => "Bmfy f xywnsl!"6

# You will need to remember how to convert a string into a number.
# Don’t forget to wrap from z to a.
# Don’t forget to keep the same case.
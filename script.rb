def caesar_cipher(string, shift_num)
  lowercase = ("a".."z").to_a
  uppercase = ("A".."Z").to_a
  string_array = []
  string.each_char do |c|
    if lowercase.include?(c)
      shifted_index = (lowercase.index(c) + shift_num) % 26
      string_array.push(lowercase[shifted_index])
    elsif uppercase.include?(c)
      shifted_index = (uppercase.index(c) + shift_num) % 26
      string_array.push(uppercase[shifted_index])
    else
      string_array.push(c)
    end
  end
  new_string = string_array.join("")
  p new_string
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
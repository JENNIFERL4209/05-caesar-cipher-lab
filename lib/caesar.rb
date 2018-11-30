def caesar_encode(string,offset)
  alphabets = [*('a'..'z')]
  caps = [*('A'..'Z')]
  word = string.split("")
  word.map do |character|
    if character =~ /[[a-z]]/
      encode = alphabets.index(character)+offset
      alphabets[encode]
      alphabets[encode% 26]
    elsif character =~ /[[A-Z]]/
      caps_encode = caps.index(character)+offset
      caps[caps_encode]
      caps[caps_encode% 26]
    else
      character = character
    end
  end.join
end

def caesar_decode(string,offset)
    alphabets = [*('a'..'z')]
    caps = [*('A'..'Z')]
    word = string.split("")
    word.map do |character|
        if character =~ /[[a-z]]/
      decode = alphabets.index(character)-offset
      alphabets[decode]
      alphabets[decode% 26]
    elsif character =~ /[[A-Z]]/
      caps_decode = caps.index(character)-offset
      caps[caps_decode]
      caps[caps_decode% 26]
    else
      character = character
    end
  end.join
end

# puts "What would you like to encode?"
# user_string = gets.chomp
# puts "What do you want the offset to be?"
# user_offset = gets.chomp.to_i
# puts caesar_encode(user_string,user_offset)

# puts "What would you like to decode?"
# user_string = gets.chomp
# puts "What do you want the offset to be?"
# user_offset = gets.chomp.to_i
# puts caesar_decode(user_string,user_offset)
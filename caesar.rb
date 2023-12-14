

# String.ord
# to get the number


# Int.chr 
# to turn back into a character. 



# Step one: take in the text and the shift
# Step two: break it into an array of single character per spot
# step three: change the letters to number, keep the punctuation.
# Punctuation = 32 through 64. 
# step four, update numbers, wrap if lowercase goes over 122, upper over 90
#  NOTE: a = 97 z = 122 A= 65, Z =90
# step five = convert back to letters
# step six = print the converted message.
def shift_func(character_input, shift)
    if (character_input < 65)
        return character_input
    elsif (character_input >= 65 and character_input < 91)
        character_input = character_input + shift.to_i
            if (character_input > 90)
                character_input -= 26
                return character_input
            end
            return character_input
        else 
            character_input = character_input + shift.to_i
            if (character_input > 122)
            
                character_input -= 26
                return character_input
            end
            return character_input
        end

    end

def caesar_cipher (string, shift_num)
    shift_string = string.split("")
    shift_string.each_with_index do |char, index|
        shift_string[index] = shift_string[index].ord
    end
    shift_string.each_with_index do |chr, index|
        shift_string[index] = shift_func(shift_string[index], shift_num)
    end
    shift_string.each_with_index do |char, index|
        shift_string[index] = shift_string[index].to_i.chr
    end
    return_string = shift_string.join
    return return_string
end
print "Please enter a phrase for a Caesar Cipher, and a Integer for us to shift by:"
print caesar_cipher(gets(), gets())

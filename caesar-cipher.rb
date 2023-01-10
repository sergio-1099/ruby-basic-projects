require 'pry-byebug'

def caesar_cipher(message, shift)
    message_array = message.split("")
    encryption = message_array.each_with_index do |letter, index|
        message_array[index] = shift(letter, shift)
    end
    puts encryption.join("")
end

def shift(letter, shift)
    shift.times do
        if letter == "Z"
            letter = "A"
            next
        end
        if letter == "z"
            letter = "a"
            next
        end
        if letter == " " || letter == "!" || letter == "," || letter == "."
            next
        end
        letter = (letter.ord + 1).chr
    end
    return letter
end

puts caesar_cipher("Zimbabwe", 5)
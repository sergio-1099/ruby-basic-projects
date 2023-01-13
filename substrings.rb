def substrings(string, word_bank)
    string_array = string.split(" ")
    i = 0
    hash_counter = Hash.new(0)
    while i < string_array.length do
        hash_counter = word_bank.reduce(hash_counter) do |hash, n|
            if (check_substring?(string_array[i].upcase, n.upcase)) 
                hash[n] += 1
            end
            hash
        end
        i += 1
    end
    return hash_counter
end

def check_substring?(string, n)
    true if (string == n || string.include?(n))
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
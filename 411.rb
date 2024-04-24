#Given a hash, create a new hash that has the keys and values switched.
#For example, {"a" => 1, "b" => 2, "c" => 3} becomes {1 => "a", 2 => "b", 3 => "c"}.

hash = {"a" => 1, "b" => 2, "c" => 3}


def switcheroo(hash)
    new_hash = {}
    hash.each {|k, v| new_hash[v] = k}
    return new_hash
end


pp switcheroo(hash)



#Convert an array of strings into a hash with keys for each string in the array and values for the number of times the string appears in the array.
#For example, ["do", "or", "do", "not"] becomes {"do" => 2, "or" => 1, "not" => 1}.


def word_count(arr)
    output = {}
    while arr.length > 0
        former_length, word = arr.length, arr[0]
        arr.delete(word)
        output[word] = former_length - arr.length
    end
    return output
end

arr = ["do", "or", "do", "not", "do", "not", "do", "not", "do", "or", "do", "or", "do", "not"]
pp word_count(arr)



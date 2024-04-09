# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.

#Convert an array of hashes into a hash of arrays, using the author as keys and the titles as values.



def arr_to_hash(arr)
    output = {}

    for h in arr
        author = h[:author]
        if output.keys.include?(author)
            output[author] = output[author].push(h[:title])
        else
            output[author] = [h[:title]]
        end
    end
end


arr = [{author: "Jeff Smith", title: "Bone"}, {author: "George Orwell", title: "1984"}, {author: "Jeff Smith", title: "RASL"}]

puts arr_to_hash(arr)


# Were you able to easily solve the problem from memory?
# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.


# I would like to get more practice with array methods that iterate over itself.
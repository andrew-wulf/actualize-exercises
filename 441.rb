# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.


#Convert a hash into an array of hashes using the keys from each hash as the :id key in each of the array's hashes.
#For example, {321 => {name: "Alice", age: 31}, 322 => {name: "Maria", age: 27}} becomes [{id: 321, name: "Alice", age: 31}, {id: 322, name: "Maria", age: 27}].

people = {321 => {name: "Alice", age: 31}, 322 => {name: "Maria", age: 27}}


def convert(h)
    return h.map {|k, v| {id: k}.merge(v)}
end

pp convert(people)



# Were you able to easily solve the problem from memory?
# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.

# I learned about the merge feature to combine hashes easier. I also found out that hashes can map too.
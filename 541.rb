# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.

#Convert a hash into a flat array containing all the hash’s keys and values.
#For example, {"a" => 1, "b" => 2, "c" => 3, "d" => 4} becomes ["a", 1, "b", 2, "c", 3, "d", 4].



def convert(h)
    arr = []
    h.each {|k, v| arr.push(k); arr.push(v)}
    return arr
end

h = {"a" => 1, "b" => 2, "c" => 3, "d" => 4}
pp convert(h)

# Were you able to easily solve the problem from memory?
# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.


#I would like to make a function that takes other functions as arguments and runs them.
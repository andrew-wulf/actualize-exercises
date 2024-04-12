# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.
#---------------------------
# Combine data from a hash with names and prices and an array of hashes with names, colors, and weights to make a new hash.
# For example, {"chair" => 75, "book" => 15} and [{name: "chair", color: "red", weight: 10}, {name: "book", color: "black", weight: 1}] 
# becomes {"chair" => {price: 75, color: "red", weight: 10}, "book" => {price: 15, color: "black", weight: 1}}.

output, arr = {"chair" => 75, "book" => 15}, [{name: "chair", color: "red", weight: 10}, {name: "book", color: "black", weight: 1}] 

arr.each do |h|
    name = h[:name]
    h[:price] = output[name]
    h.delete(:name)
    output[name] = h
end
pp output


#Convert an array of strings into a hash with keys for each string in the array and values for the number of times the string appears in the array.
#For example, ["do", "or", "do", "not"] becomes {"do" => 2, "or" => 1, "not" => 1}.

input, output = ["do", "or", "do", "not"], {}

input.each { |w| output[w.to_sym] = input.count(w)}
pp output


#Given a hash, create a new hash that has the keys and values switched.
#For example, {"a" => 1, "b" => 2, "c" => 3} becomes {1 => "a", 2 => "b", 3 => "c"}.

input, output = {"a" => 1, "b" => 2, "c" => 3}, {}
input.keys.each { |k| output[input[k]] = k}
pp output

# Were you able to easily solve the problem from memory?
# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.
#----------------------------



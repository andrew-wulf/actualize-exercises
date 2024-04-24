# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.

#Use a nested loop to convert an array of string arrays into a single string.
#For example, [["a", "man"], ["a", "plan"], ["a", "canal"], ["panama"]] becomes "amanaplanacanalpanama".

def condense(arr)
    str = ""
    for arr in arr
        for item in arr
            str += item
        end
    end
    return str
end

pp condense([["a", "man"], ["a", "plan"], ["a", "canal"], ["panama"]])


# Were you able to easily solve the problem from memory?
# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.



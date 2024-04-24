# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.

#Start with an array of numbers and create a new array with only the even numbers.
#For example, [2, 4, 5, 1, 8, 9, 7] becomes [2, 4, 8].


arr, arr2 = [2, 4, 5, 1, 8, 9, 7], []

arr.each do |x|
    if x % 2 == 0
        arr2.push(x)
    end
end

pp arr2



# Were you able to easily solve the problem from memory?
# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.


# 
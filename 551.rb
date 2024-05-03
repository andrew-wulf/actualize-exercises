# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.


#Use a nested loop with an array of numbers to compute an array with every combination of products from each number.
#For example, [2, 8, 3] becomes [4, 16, 6, 16, 64, 24, 6, 24, 9].


problem_arr = [2, 8, 3]



def products(arr)
    i, j, start, output = 0, 0, 0, []

    while i < arr.length
        j = 0
        while j < arr.length
            output.push(arr[i] * arr[j])
            j +=1
        end
        i +=1
    end
    return output
end

prod = products(problem_arr)
p prod





# Were you able to easily solve the problem from memory?
# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.



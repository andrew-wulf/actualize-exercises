# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.

#Use a nested loop to convert an array of number pairs into a single flattened array.
#For example, [[1, 3], [8, 9], [2, 16]] becomes [1, 3, 8, 9, 2, 16].

arr = [[1, 3], [8, 9], [2, 16]]
problem_arr = [[1, 3], [8, [9, [10, 11, 12, 13]], 9, [10, 14]], [2, [16, 18], [[4, 3], 2], [9, 5]], 27]



def solve(array)
    output, memory = [], []

    index, element = 0, nil
    arr = array
    z = 0
    while true
        element = arr[index]
        #p element
            if element.class != Array
                output.push(element)
                index +=1
                while true
                    if index >= arr.length
                        if memory.length > 0
                            mem = memory.pop
                            arr, index = mem[0], mem[1] + 1
                        else
                            return output
                        end
                    else
                        break
                    end
                end
            else
                memory.push([arr, index])
                arr, index = element, 0
            end
    end
    return output
end


def recur_solve(arr, output)
    for element in arr
        if element.class == Array
            output = recur_solve(element, output)
        else
            output.push(element)
        end
    end
    return output
end


pp solve(arr)
pp timer(solve(problem_arr))
pp timer(recur_solve(problem_arr, []))


# Were you able to easily solve the problem from memory?
# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.

#I want to look into the most commonly used algorithms, and apply one of them to a problem.

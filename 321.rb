# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.


# Use a nested loop to find the largest product of any two different numbers within a given array.
#For example, [5, -2, 1, -9, -7, 2, 6] becomes 63.


def random_arr
    arr = []
    15.times do
        arr.push(rand(-20..30))
    end

    rand_num = arr[rand(15)]
    arr.insert(rand(15), 10 - rand_num)
    return arr
end



def largest_product(arr)
    largest = 0
    arr.each do |anchor|
        for num in arr
            if num != anchor
                product = num * anchor
                if product > largest
                    largest = product
                end
            end
        end
    end
    return largest
end


def numbers(arr)
    return arr.max(2)
end

arr = random_arr
pp arr
puts "Largest product: #{largest_product(arr)}"

puts "Numbers: #{numbers(arr)}"




#Use nested loops with an array of numbers to compute a new array containing the first two numbers (from the original array) that add up to the number 10. If there are no two numbers that add up to 10, return false.
#For example, [2, 5, 3, 1, 0, 7, 11] becomes [3, 7].

def add_to_ten(arr)
    i = 0
    while i < arr.length
        z = 0
        while z < arr.length
            if z != i
                if arr[i] + arr[z] == 10
                    return [arr[i], arr[z]]
                end
            end
            z+=1
        end
        i+=1
    end
    return false
end


puts "Add to ten: #{add_to_ten(arr)}"



# Were you able to easily solve the problem from memory?
# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.

# problem solving


# Step 1: Read the problem below.
# Step 2: Decompose the problem into smaller testable problems. DO NOT SOLVE THE PROBLEM YET.
# Step 3: Solve each problem until you get stuck. YOU DO NOT NEED TO SOLVE THE COMPLETE PROBLEM!

# QUESTION 1
# Ruby has a .sort method that makes it easy to sort an array. 
# The goal of this exercise is to implement your own sort from scratch 
# (without using Ruby's #sort method!)

# The approach you will implement is called bubble sort. 
# First you examine the first two items in the array. 
# If the second is smaller than the first, you swap their positions. 
# Then you move on to the next two items and keep repeating. 
# You can see a visual of it in action here: https://upload.wikimedia.org/wikipedia/commons/c/c8/Bubble-sort-example-300px.gif 

# Your job is to implement a bubble sort that takes an array and returns a sorted array. 
# To be clear, you're not allowed to use the built in .sort method.
# Instead you'll write code to go through the array two items at a time 
# to accomplish the same thing.



#1 create random array of 30 numbers (no repeats)
#2 iterating over array, compare current number with the next. If larger, swap places.
#3 add in_progress variable, set it to true if any swaps occured.
#4 if the iteration is done and sorting still in progress, reset i to 0 and in_progress to false
#5 return array when iteration is done and no sorts occured.


def create_rand_arr
    arr, nums = [], [*1..30]
    nums.shuffle!
    while nums.length > 0
        arr.push(nums.pop)
    end
    return arr
end



def bubble_sort(arr)
    i, in_progress = 0, false

    while i < arr.length - 1
        left, right = arr[i], arr[i + 1]
        #pp [left, right]
        if left > right
            arr[i], arr[i + 1] = arr[i + 1], arr[i]
            in_progress = true
        end

        if i == arr.length - 2
            if in_progress
                i, in_progress = 0, false
            else
                return arr
            end
        else
            i +=1
        end
    end
end




arr = create_rand_arr
puts "\nRandom Array: #{arr}"
solved = bubble_sort(arr)
puts "Solution: #{solved}"


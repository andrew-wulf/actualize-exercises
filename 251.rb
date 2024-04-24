# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.

#Start with an array of hashes and find the hash with the shortest name (from the :name key).
#For example, [{name: "chair", price: 100}, {name: "pencil", price: 1}, {name: "book", price: 4}] becomes {name: "book", price: 4}.

def create_problem_array
    i, arr, used = 0, [], []
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    70.times do
        
        while true
            num = rand(1...101)
            if not used.include?(num)
                used.push(num)
                break
            end
        end

        name = ""
        num.times do
            name += alphabet[rand(26)]
        end

        arr.push({name: name, price: rand(1...100)})
    end
    return arr
end




def solve(arr, comm)
    word_counts = arr.map {|h| h[:name].length}

    if comm == "short"
        return arr[word_counts.index(word_counts.min)]
    elsif comm == "long"
        return arr[word_counts.index(word_counts.max)]
    else
        target, i = comm.to_i, 0

        while i < word_counts.length
            count= word_counts[i]
            difference = (target - count).abs
            closest = word_counts[0]

            if difference == 0
                return arr[word_counts[i]]
            elsif difference < word_counts[closest]
                closest = i
            end
            i+=1
        end
        return arr[closest]
    end
end


arr = create_problem_array
puts arr
puts "---------\n"
i = 0

puts "Name Locator commands: \nlong = find longest name \nshort = find shortest name \n[integer] = find name length closest to integer (between 1 and 100) \nexit = exit"
while i < 3
    comm = gets.chomp
    if ["long", "short"].include?(comm) || comm.to_i
        puts "Solution: #{solve(arr, comm)}"
        i +=1
    elsif comm == "exit"
        break
    end
end



# Were you able to easily solve the problem from memory?
# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.

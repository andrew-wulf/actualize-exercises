# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.


#Convert an array of arrays into a hash.
#For example, [[1, 3], [8, 9], [2, 16]] becomes {1 => 3, 8 => 9, 2 => 16}.


problem_arr = [[1, 3], [8, 9], [2, 16], [1, 5], [8, 9], [3, [21, 19]], [6, 9], [1, 34]]

def convert(item)
    if item.class == Array
        h = {}
        for arr in item
            key, val = *arr

            if h.keys.include?(key)
                if h[key].class == Array
                    h[key].push(val)
                else
                    h[key] = [h[key], val]
                end
            else
                h[key] = val
            end
        end
        return h
    elsif item.class == Hash
        arr = []
        item.each do |k, v| 
            if v.class == Array
                v.each {|x| arr.push([k, x])}
            else
                arr.push([k,v])
            end
        end
        return arr
    end
end

h = convert(problem_arr)
pp h
arr = convert(h)
pp arr



# Were you able to easily solve the problem from memory?
# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.


#I'll work on a class problem next.
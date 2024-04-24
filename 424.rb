# QUESTION 1
# Read about the Ruby map method: https://www.rubyguides.com/2018/10/ruby-map-method/ 
# Then write a program that uses the map method with an array of numbers 
# to create a new array with each number multiplied by 100.



arr = []
20.times do
    arr.push(rand(1...100))
end
pp arr

arr2 = arr.map {|x| x * 100}
p arr2

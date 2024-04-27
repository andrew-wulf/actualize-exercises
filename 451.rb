# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.

# Write a Point class with attributes for x, y, and z coordinates.

class Point
    attr_reader :x, :y, :z
    attr_writer :x, :y, :z

    def initialize(x, y, z=nil)
        @x = x
        @y = y
        @z = z
    end

    def coordinates
        message = "X: #{@x} | Y: #{@y}"
        if @z
            message += " | Z: #{z}"
        end
        puts message
    end
end


p1, p2 = Point.new(100, 25.5), Point.new(34, 96, z=125)

p1.coordinates
p2.coordinates
puts "----- changing coordinates -----"
p1.x -=1
p1.y +=4
p1.z = 14
p2.z = nil
p2.y = 37
p1.coordinates
p2.coordinates




# Were you able to easily solve the problem from memory?
# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.


# I want to use a parent/child class in an example.
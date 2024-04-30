# DELIBERATE PRACTICE REFLECTION
# Paste a deliberate practice question you are currently working on below.
# Write the code to solve the problem without looking at any notes or other resources.


#Write a Location class with attributes for latitude and longitude.



class Location
    attr_reader :latitude, :longitude
    def initialize(lat, long)
        @latitude, @longitude = lat, long
    end

    def display
        return [@latitude, @longitude]
    end
end



#Added challenge 1: use locations as points in "Triangle" class, which can calculate its sides from the 3 points.
#Added challenge 2: add a "Triangles" parent class, with at least one method in each class that calls a method in the other.

class Triangles
    attr_reader :children
    def initialize
        @children = {}
    end

    def add(tri)
        if @children.length == 0
            index = 1
        else
            index = @children.keys[-1] + 1
        end
        @children[index] = tri
        tri.id = index
    end

    def display
        for key, tri in @children
            puts "\n----- Triangle #{key} -----"
            puts "Points: #{tri.points}"
            puts "Sides: #{tri.sides}"
            puts "-------------------------"
        end
    end

    def largest
        largest_area, largest_index, i = 0, 0, 1

        while i <= @children.length
            tri = @children[i]
            area = tri.area

            if area > largest_area
                largest_area, largest_index = area, i
            end
            i +=1
        end
        puts "Largest Area: Triangle #{largest_index} | #{largest_area}"
    end

    def remove(i)
        @children.delete(i)
    end

end



class Triangle
    attr_writer :id
    def initialize(parent=nil, loc1, loc2, loc3)
        @p1, @p2, @p3 = loc1, loc2, loc3
        @id, @parent = nil, parent
    end

    def points
        return [@p1.display, @p2.display, @p3.display]
    end

    def sides
        p1, p2, p3 = @p1.display, @p2.display, @p3.display

        side_1 = Math.sqrt(((p1[0] - p2[0]).abs)**2 + ((p1[1] - p2[1]).abs)**2).round(3)
        side_2 = Math.sqrt(((p1[0] - p3[0]).abs)**2 + ((p1[1] - p3[1]).abs)**2).round(3)
        side_3 = Math.sqrt(((p2[0] - p3[0]).abs)**2 + ((p2[1] - p3[1]).abs)**2).round(3)

        return [side_1, side_2, side_3]
    end

    def area
        sides = self.sides
        a, b, c = *sides
        s = (a + b + c) / 2
        return Math.sqrt(s*(s-a)*(s-b)*(s-c)).round(2)
    end

    def remove
        puts "maybe"
        if @parent
            puts "yes"
            @parent.remove(@id)
        end
    end
end



def demo
    locs = []

    12.times do
        locs.push(Location.new(rand(10..100), rand(10..100)))
    end

    triangles = Triangles.new

    i = 1
    used = []
    4.times do
        points = []
        3.times do
            while true
                num = rand(12)
                if not used.include?(locs[num])
                    used.push(locs[num])
                    points.push(locs[num])
                    break
                end
            end
        end
        tri = Triangle.new(parent=triangles, *points)
        triangles.add(tri)

        i += 1
    end

    last_tri = triangles.children[4]
    last_tri.remove

    triangles.display
    triangles.largest

end


demo




# Were you able to easily solve the problem from memory?
# If so, describe the next skill you will start to practice tomorrow.
# If not, describe the part you got stuck on that requires more practice.


#I want to do more with math or geometry.
# methods that have a bang (!) alter the original array
#grades = ["A", "B", "C", "D", "F"]
#p grades
#p grades.shuffle
#p grades
#p grades.shuffle!
#p grades

# .join concatenates an array into a string with glue
#grades = ["A", "B", "C", "D", "F"]
#puts grades.join(", ")

# .uniq removes duplicates
#grades = ["A", "B", "C", "A", "A"]
#puts grades.uniq

# .compact removes nil elements
#grades = ["A", "B", nil, "D", "F"]
#p grades
#p grades.compact

# .flatten turns a multi-dimensional array into a single dimension array
#grades = ["A", "B", ["C", "D"], "F"]
#p grades.flatten

# .concat joins two arrays together
#grades = ["A", "B", "C"]
#puts grades
#grades.concat(["D", "F"])
#puts grades

# .min and .max find the maximum and minumum values in an array
#grades = ["A", "B", "C", "D", "F"]
#puts grades.max
#puts grades.min

# .include? checks if the array contains an element
#grades = ["A", "B", "C", "D", "F"]
#puts grades.include?("B")
#puts grades.include?("X")

# .none? returns true if none of the elements meet the criteria
#grades = ["A", "B", "C", "D", "F"]
#puts grades.none? {|grade| grade == "E"}

# .any? checks that all elements in the array meet the criteria
#grades = ["A", "B", "C", "D", "F"]
#puts grades.all? {|grade| grade == "D"}

# .any? checks if any element in the array meets the criteria
#grades = ["A", "B", "C", "D", "F"]
#puts grades.any? {|grade| grade == "E"} 

# some convenient methods
#grades = ["A", "B", "C", "D", "F"]
#puts grades.reverse
#puts grades.rotate # rotate elements around the array (circular)
#puts grades.shuffle # randomly shuffle elemnts
#puts grades.sample # select a random element from the array

# ask an array for its number of elements
#grades = ["A", "B", "C", "D", "F"]
#puts grades.size

# watch out for shovelling (appending/pushing) when you mean to join
#p ["A", "B", "C"] << ["D", "E", "F"]
#p ["A", "B", "C"] + ["D", "E", "F"]

# ruby provides a way to find all the elements in either array without duplicates
#puts ["A", "B", "C"] | ["A", "C", "D"]

# ruby provides a way to find elements that two arrays have in common
#puts ["A", "B", "C"] & ["A", "C"]

# ruby provides a way to subtract arrays
#puts ["A", "B", "C"] - ["A", "C"]

# ruby provides a way to join two arrays
#puts ["A", "B", "C"] + ["D", "E", "F"]

# ruby lets us put an array in an array
#grades = ["A", "B", "C", ["C", "D", "A"], "F"]
#puts grades
#puts grades.size
#puts grades[3]

# ruby arrays can mix the types of things it stores
#grades = ["A", "B", "C", "D", "F", 98.0]
#puts grades

# we can delete an element using its index
#grades = ["A", "B", "C", "D", "F"]
#grades.delete_at(2)
#puts grades

# we can remove an element from the beginning of the array
#grades = ["A", "B", "C", "D", "F"]
#grades.shift
#puts grades

# we can add an element to the start of the array
#grades = ["A", "B", "C", "D", "F"]
#grades.unshift("A-")
#puts grades

# we can remove an element from the end of the array
#grades = ["A", "B", "C", "D", "F"]
#grades.pop
#puts grades

# we can add an element to the end of the array
#grades = ["A", "B", "C", "D", "F"]
#grades.push("D")
#puts grades

# we can modify an element of an array using its index
#grades = ["A", "B", "C", "D", "F"]
#grades[1] = "B+"
#puts grades[1]
#grades[20] = "A"
#puts grades

# we can create an empty array
#grades = []
#grades = Array.new

# ruby arrays come with many useful methods
#grades = ["A", "B", "C", "D", "F"]
#puts grades.first
#puts grades.first(2)
#puts grades.last
#puts grades.last(2)

# ruby lets us access array elements using negative indexes too
#grades = ["A", "B", "C", "D", "F"]
#puts grades[-1]
#puts grades[-2]

# indexes follow the pattern 1st = 0, 2nd = 1, 3rd = 2 ... last = n - l
#grades = ["A", "B", "C", "D", "F"]
#puts grades[0]
#puts grades[4] # 5 - 1 = 4
#puts grades[5] # a non-existent index returns nil

# we can address individual elements of an array
#grades = ["A", "B", "C", "D", "F"]
#puts grades[0]
#puts grades[3]

# arrays remember a collection of information
#grades = ["A", "B", "C", "D", "F"]
#puts grades

# we know how to remember a single piece of information
#grade = "A"
#puts grade

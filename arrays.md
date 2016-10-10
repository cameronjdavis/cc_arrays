# Arrays

## What are arrays?

So far we have used single items of data, e.g. the name of a song, or a student's grade. More common is that we have a collection of items, e.g. a list of songs, or the grades of an entire class. An array can store these collections of items (aka elements).

```
grade = "A"
grades = ["A", "B", "C", "B+", "F"]
```

An array is useful because we can represent a large collection with a single name, e.g. `grades`. And we can perform repetitive tasks on each of the elements. More on this later.

## What are arrays not for?

The array's job is only to remember it has elements and to get each element when asked. It doesn't know what is in each element.

## Accessing arrays

Individual elements can be addressed with an index. Like an index in a book that points to the location of a topic, an array index points to the location of an element in the array. The index is a number that starts at zero and increments to one less than the length of the array.

```
grades = ["A", "B", "C", "B+", "F"]
puts grades[0]
puts grades[2]
puts grades[4] # 4 = 5 - 1, 5 is the length of the array
p grades[10] # Use p instead of puts to inspect something
```

Ruby allows a negative array index.

```
grades = ["A", "B", "C", "B+", "F"]
puts grades[-1]
```

Ruby has handy methods for accessing arrays.

```
grades = ["A", "B", "C", "B+", "F"]
p grades.first
p grades.first(2)
p grades.last
p grades.last(2)
```

## Creating an empty array

In Ruby, there are multiple ways to initialise an empty array.

```
grades = []
grades = Array.new()
```

Some languages require you to say how big the array will be when it is created, but Ruby isn't strict about this and we can optionally tell Ruby how big the array will be.

```
grades = Array.new(3) # telling Ruby how big the array will be
```

## Adding and removing items

The contents of an array can change.

```
grades = ["A", "B", "C", "B+", "F"]
grades[2] = "C+"
p grades
```

We can add items to the end of an array, known as pushing. And remove items, known as popping.

```
grades = ["A", "B", "C", "B+", "F"]
grades.push("A-")
p grades
grades.pop
p grades
grades << "C+" # equivalent to push, known as the shovel operator
p grades
```

We can add and remove items from the start of the array.

```
grades = ["A", "B", "C", "B+", "F"]
grades.unshift("B-")
p grades
grades.shift
p grades
```

We can also remove items by index.

```
grades = ["A", "B", "C", "B+", "F"]
grades.delete_at(2)
p grades
```

## Array elements

Array elements can be of any type. Ruby allows this but some other languages do not.

```
grades = ["A", "B", "C", "B+", "F", 98, 55.6]
p grades
```

We can put an array inside another array.

```
grades = ["A", "B", "C", ["A", "A-"], "F"]
puts grades.size # how many elements are there? Ruby says 5.
p grades[3]
```

## Array operators

Arrays have operators just like numbers have operators.

* `+` (add elements into a single array)

* `-` (remove elements in one array from another)

* `&` (find the elements present in both arrays, aka intersection)

* `|` (find the set of elements in either array without duplicates, aka union)

```
p ["A", "B", "C"] + ["D", "B", "F"]
p ["A", "B", "C"] - ["D", "B", "F"]
p ["A", "B", "C"] & ["D", "B", "F"]
p ["A", "B", "C"] | ["D", "B", "F"]
```

When joining two arrays, make sure you use `+` instead of `<<`. The shovel operator might not do what you expect.

```
p ["A", "B", "C"] << ["D", "B", "F"]
```

## Handy array methods

We can get an array's size.

```
grades = ["A", "B", "C", "B+", "F"]
puts grades.size
```

And we can manipulate an array.

```
grades = ["A", "B", "C", "B+", "F"]
p grades.reverse
p grades.rotate # rotate elements around the array (circular)
p grades.shuffle # randomly shuffle elemnts
p grades.sample # select a random element from the array
```

We can interrogate an array about its contents.

```
# checks if any element in the array meets the criteria
grades = ["A", "B", "C", "B+", "F"]
puts grades.any? {|grade| grade == "B"} 
```

```
# checks that all elements in the array meet the criteria
grades = ["A", "B", "C", "B+", "F"]
puts grades.all? {|grade| grade == "D"}
```

```
# returns true if none of the elements meet the criteria
grades = ["A", "B", "C", "B+", "F"]
puts grades.none? {|grade| grade == "E"}
```

```
# checks if the array contains an element
grades = ["A", "B", "C", "B+", "F"]
puts grades.include?("B")
puts grades.include?("X")
```

```
# find the maximum and minumum values in an array
grades = ["A", "B", "C", "B+", "F"]
puts grades.max
puts grades.min
```

```
# join two arrays together
grades = ["A", "B", "C", "B+", "F"]
p grades
grades.concat(["D", "F"])
p grades
```

```
# turn a multi-dimensional array into a single dimension array
grades = ["A", "B", ["C", "D"], "F"]
p grades.flatten
```

```
# remove nil elements
grades = ["A", "B", nil, "D", "F"]
p grades.compact
```

```
# remove duplicates
grades = ["A", "B", "C", "A", "A"]
p grades.uniq
```

```
# concatenate an array into a string with glue
grades = ["A", "B", "C", "D", "F"]
puts grades.join(", ")
```

Methods that have a bang (!) alter the original array. Methods without an exclamation point do not alter the original array.

```
grades = ["A", "B", "C", "D", "F"]
p grades
p grades.shuffle
p grades
p grades.shuffle!
p grades
```

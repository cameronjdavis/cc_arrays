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

Individual elements can be addressed with an index. Like an index in a book that points to the location of a topic, an array index points to the location of an element in the array. The index is a number that starts at zero and increases to one less than the length of the array.

```
grades = ["A", "B", "C", "B+", "F"]
puts grades[0]
puts grades[2]
puts grades[4] # 4 = 5 - 1, 5is the length of the array
p grades[10] # Use p instead of puts to inspect something
```

Ruby also allows a negative array index.

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

In Ruby, there are multiple ways to intialise an empty array.

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
grades << "C+" # equivilant to push, knwon as the shovel operator
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

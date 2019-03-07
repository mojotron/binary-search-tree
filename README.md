# Binary Search Tree

In computer science, binary search trees (BST), sometimes called ordered or sorted 
binary trees, are a particular type of container: data structures that store "items"
(such as numbers, names etc.) in memory. They allow fast lookup, addition and removal
of items, and can be used to implement either dynamic sets of items, or lookup tables
that allow finding an item by its key (e.g., finding the phone number of a person by name).

Binary search trees keep their keys in sorted order, so that lookup and other operations
can use the principle of binary search: when looking for a key in a tree (or a place to 
insert a new key), they traverse the tree from root to leaf, making comparisons to keys 
stored in the nodes of the tree and deciding, on the basis of the comparison, to continue 
searching in the left or right subtrees. On average, this means that each comparison allows
the operations to skip about half of the tree, so that each lookup, insertion or deletion
takes time proportional to the logarithm of the number of items stored in the tree. 
This is much better than the linear time required to find items by key in an (unsorted) array
but slower than the corresponding operations on hash tables. 
Learn more on [Wikipedia](https://en.wikipedia.org/wiki/Binary_search_tree).

Goal of this project is to make binary search tree from array filled with values. And to
implement breadth_first_search algorithm and depth_first_search algorithm.

This project is part of [The Odin Project curriculum](https://www.theodinproject.com/). 
Awesome on-line web development learning place!
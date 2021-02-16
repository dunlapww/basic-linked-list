[![Gem Version](https://badge.fury.io/rb/basic_linked_list.svg)](https://badge.fury.io/rb/basic_linked_list)

# basic_linked_list
This is a ruby gem for a linked list object.  The BasicLinkedList object initializes with a single Node object with a pointer to the next node (which initializes as nil).  Nodes can be appended to the BasicLinkedList using the .append method.  Other methods included with this LinkedList are:
- .pop : will return the value of the last node in the list and remove it from the list.
- .includes?(<element>) : will search for the element in the list and return true/false
- .insert(position, element) : allows you insert an element into the linked list at a position
- .prepend(element) : allows you add an element to the beginning of the list
- .to_string : converts the list to a string representation
- .count : returns a count of the number of nodes in the list
- .last_node : returns the value of the last node in the list

# why make this?
I wanted to gain a deeper understanding of the linked list data structure and learn how to create a Ruby Gem.

/*
User Stories:

- I want to be able to create a new grocery list.
- I want to be able to add new groceries to the list along with a quantity. 
- I want to be able to remove an item from the list.
- I want to be able to update quantities for an item on the list. 
- I want to be able to print the list out in a readable way. 

Pseudocode: 
- Input: items, quantities
- Output: readable list of groceries and quantities
- Steps:
	- Create a constructor for a new list
	- Create a function for the object type to add an item, inputs of item and quantity
		- have the item name become a property and set it equal to the quantity
		- print out confirmation that the item has been added
	- Create a function for the object type that removes an item, input of item
		- delete the item's property from the object
		- print out confirming removal
	- Create a function for the object type that updates quantities of an item, inputs of item and quantity
		- actual settings should look just like add item
		- print out that the quantity has been updated
	- Create a function for the object type that prints the list
		- print a title and each item on the list with a quantity

*/

function Grocery_List() {
  
  this.add_item = function(item,amount) {
    this[item] = amount;
    console.log("You added " + this[item] + " " + item + " to your list.")
  };
  
  this.remove_item = function(item) {
    delete this[item];
    console.log("You removed " + item + " from the list.")
  };
  
  this.update_quantity = function(item,amount) {
    this[item] = amount;
    console.log("You updated the amount of " + item + " in your list to " + this[item] + ".");
  }
  
  this.print_list = function() {
    console.log("\nGrocery List:");
    for (var key in this) {
      if (typeof this[key] == 'number') {
      console.log(key.charAt(0).toUpperCase() + key.slice(1) + ": " + this[key]);
      };
    };
  };
  
};

var list = new Grocery_List();
list.add_item("bananas",3);
list.remove_item("bananas");
list.add_item("coconuts",4);
list.update_quantity("coconuts",2);
list.add_item("apples",21);
list.print_list();

/*
- What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
	Mostly solidified looping through objects in Javascript, including ones that have functions
	in them. 

- What was the most difficult part of this challenge?
	- The most difficult part was trying to keep Javascript syntax vs Ruby syntax.

- Did an array or object make more sense to use and why?
	An object made more sense here, since I wanted the properties and values to be associated
	with one another. 


*/
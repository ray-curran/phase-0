// Pseudocode:

/*
Input: list of numbers
Output: sum of numbers, mean of list, median (middle value) of list
Steps:
- Declare variable that holds list of numbers
- Create new object with properties for sum, mean, and median
	- Sum property
	   - should be defined as a function that takes a list as an argument
	   - Create variable for final sum, should start equal to 0
	   - FOR loop that starts i with 0, continues while i is less than list length, and increases by 1
	 	     - in each iteration of the for loop, add the element of the list at index i to final sum
	 	     - END
	   - return final sum
	- Mean property
		 - should be defined as a function that takes a list as an argument
		 - declare variable average, set equal to sum (should be able to use function above) divided by length of list
		 - return average
	- Median property
		 - should be defined as a function that takes a list as an argument
		 - declare variable for sorted list, set value to be the sorted list
		 - declare variable for median index (index of the median value), set value to be length of list divided by 2, rounded down to nearest whole number
		 - IF length of list is an odd number
		 		- return value from list at the median index
		 - ELSE
		 		- return (value in list at median index) + (value in list at median index - 1) divided by 2
		 - END
	*/
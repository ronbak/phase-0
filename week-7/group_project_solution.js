// Person 2: Pseudocode
// Sum
// Input: A collection of numbers
// Output: The sum of all the numbers in the collection
// Steps: Create a function for sum with the collection as the argument
// 	      Create a total that is equal to 0
//        Take the collection and using a FOR loop create a counter that is equal to 0 
//          As long as the counter is less than the length of the collection add 1 to the counter
//          Inside the loop set the total equal to the total plus the value within the collection
//        Outside the loop return the total

// Mean
// Input: A collection of numbers
// Output: The mean(average) of the numbers in the collection
// Steps: Create a function for sum with collection as the argument
// 	      Create a total that is equal to 0
// 	      Take the collection and using a FOR loop create a counter that is equal to 0 
//    	    As long as the counter is less than the length of the collection add 1 to the counter
//          Inside the loop set the total equal to the total plus the value within the collection
// 	      Outside the loop return the total divided by the collection length
 
// Median
// Input: A collection of numbers
// Output: The middle number for an odd collection length
// 		   The average of the two middle numbers for an even collection length
// Steps: Sort the collection of numbers from lowest to highest
// 	      Create a variable and set it equal to half of the total collection length rounding down to the nearest whole number
// 	      IF the length of the collection is odd return the middle number
// 	      Else return the average of the middle number plus the number below the middle number
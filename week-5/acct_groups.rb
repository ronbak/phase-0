# Pseudocode
# Input: a collection of first and last names of people in cohort
# Output: individual groups with 5 people per group
# Steps:
# 	Take collection of people and break it down into groups of 5
# 	List the groups with each person's name

# Initial Solution

def groups (list)
    list.each_slice(5) do |a,b,c,d,e|
        p [a,b,c,d,e]
    end
end

groups(["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ Collins Jr.","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","Kevin Sullivan","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"])

#refactored

def groups (list)
  new_arr = list.each_slice(5).to_a
    p new_arr.shuffle
end

groups(["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ Collins Jr.","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","Kevin Sullivan","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"])

#shuffle was added to randomize the groups so they are not alphabetically grouped.

# 1. What was the most interesting and most difficult part of this challenge?
# The most interesting part was taking the complete list of names and breaking them down into smaller groups.
# The most difficult was running out of time to be able to really get creative with ordering the list.

# 2. Do you feel you are improving in your ability to write pseudocode and break the problem down?
# My pseudocode skill are still in their infancy. I am still having trouble being able to break the problem 
# down small enough to implement each piece into the initial solution.

# 3. Was your approach for automating this task a good solution? What could have made it even better?
# I used the enumerable each_slice to break the list into arrays of 5. This left the last group with 3. 
# Adding a name to each array would help clean up the look and make it easier to read.

# 4. What data structure did you decide to store the accountability groups in and why?
# I stored the groups in arrays.

# 5. What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# In this challenge the changes made refactoring were removing the list of elements a,b,c,d,e and replacing
# them with .to_a and adding shuffle to randomize the list so the groups weren’t grouped by alphabetical order.
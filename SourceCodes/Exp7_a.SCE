// Generate a list of 100 random numbers between 10-100 representing the age of the people. 
// Draw the bar graph of people between the age of 10-20, 21-30,31-40, 41-50,51-60,61-70,71-80,81-90,91-100.

// list of 100 random numbers between 10-100 representing
list_people = gsort(floor(abs((rand(100,1)*100)+1)),'g','i') 
disp(list_people)
scf(); // Set the current graphic figure (window) - 100%
// plotting histogram of distrubution range 10
histplot(10,list_people);
// naming different axes
xtitle("random no","age.group","freq")
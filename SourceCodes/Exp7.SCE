// Given the age of different persons with their frequencies, 
// calculate simple mean of age and plot graph between age and frequency.

age=[16,17,18,19,20] // assumed age values
freq =[2;5;11;14;19] // assumed frequency 
total = age*freq  // total sum(XiFi)
mean = total/sum(freq) // Mean value

// Display Values
disp(mean) 
// Plot age vs Freq graph
plot(age, freq)
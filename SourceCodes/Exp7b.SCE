// Calculate the following statistics of the people 
// mean, median, mode , variance, standard deviation of complete data in scilab

// list of 100 random numbers between 10-100 representing
list_people = gsort(floor(abs((rand(100,1)*100)+1)),'g','i') 
// disp(list_people)

function mval = tryMode(elements) // Function for mode of data
    freq_tab = tabul(elements) // tabulating frequancy of each element
    [n,i] = max(freq_tab(:,2)) // max frequency in i and row number of max frequency in n
    mval = freq_tab(i,1) // accessing element of max frequency
endfunction

disp('Mean of data: '+string(mean(list_people)))
disp('Median of data: '+string(median(list_people)))
disp('Mode of data: '+ string(tryMode(list_people)))
disp('Variance of data: '+string(variance(list_people)))
disp('Standard deviation of data: '+string(stdev(list_people)))
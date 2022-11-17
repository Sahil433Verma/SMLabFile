// Calculation of central values for 
// lists(mean,median,mode,variance,standard deviation, coefficient of correlation)

n = 10

// list of N random numbers

list_1 = gsort(floor(abs((rand(n,1)*(n))+1)),'g','i') 
list_2 = gsort(floor(abs((rand(n,1)*(n))+1)),'g','i')

disp('List 1: ',list_1)
disp('List 2: ',list_2)

// mean of both the lists

disp('Mean of List 1: '+string(mean(list_1)))
disp('Mean of List 2: '+string(mean(list_2)))

//mode of both the lists

function mval = tryMode(elements)
    freq_tab = tabul(elements) // tabulating frequancy of each element
    [n,i] = max(freq_tab(:,2)) // max frequency in i and row number of max frequency in n
    mval = freq_tab(i,1) // accessing element of max frequency
endfunction

disp('Mode of List 1: '+string(tryMode(list_1)))
disp('Mode of List 2: '+string(tryMode(list_2)))

//  Variance of both lists

disp('variance of List 1: '+string(variance(list_1)))
disp('variance of List 2: '+string(variance(list_2)))

// Standard deviation of both the lists
// It is equal to root of variance. So, stdev(list_1)==sqroot(list_1)
disp('Standard deviation of list 1: '+string(stdev(list_1)))
disp('Standard deviation of list 2: '+string(stdev(list_2)))

// Coefficient of correlation 

function coeff = coeffOfCorr(list1,list2) // function for pearson's formula
    a1 = size(list1)(2)
    sigma_x = sum(list1)
    sigma_y = sum(list2)
    sigma_xy = sum(list1.*list2)
    sigma_xsq = sum(list1.^2)
    sigma_ysq = sum(list2.^2)
    numerator = (a1*sigma_xy) - (sigma_x*sigma_y)
    denominator = (((a1*sigma_xsq)-(sigma_x*sigma_x))*((a1*sigma_ysq)-(sigma_y*sigma_y))) 
    coeff = numerator/sqroot(denominator)
endfunction
disp("Coefficient of correlation by pearsons formula: "+string(coeffOfCorr(list_1,list_2)))
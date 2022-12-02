// To find the Covariance and Correlation For age and frequency Where
//	age=[46,53,29,61,36,39,47,49,52,38,55,32,57,54,4] and
//	Frequency = [12,15,7,17,10,11,11,12,14,9,16,8,18,14,12];

age = [46,53,29,61,36,39,47,49,52,38,55,32,57,54,4] // list of ages
frequency = [12,15,7,17,10,11,11,12,14,9,16,8,18,14,12] // list of frequency

function ans = covarr(a,b)
    x = (a - mean(a)) // Xi-mean(X)
    y = (b - mean(b)) // Yi-mean(Y)
    [temp,n] = size(x) // finding sample space
    numerator = sum(x.*y) // sum of (Xi-mean(Y))*(Yi-mean(Y))
    ans = (numerator/(n-1)) // Covariance
endfunction

disp('Covariance between age and frequency is: '+string(covarr(age,frequency)))

// Coefficient of correlation 
function cor = coeffOfCorr(l1,l2) // function for pearson's formula
    numerator = covarr(l1,l2)
    denominator = (stdev(l1)*stdev(l2))
    cor = numerator/denominator
endfunction
disp("Correlation between age and frequency is: "+string(coeffOfCorr(age,frequency)))
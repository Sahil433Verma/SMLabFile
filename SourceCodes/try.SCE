
function coeff = coeffOfCorr(list1,list2)
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
disp(coeffOfCorr([43,21,25,42,57,59],[99,65,79,75,87,81]))
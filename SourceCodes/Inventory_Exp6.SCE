//Simulation of Inventory Problem 
    // There are 3 day lag between order and delivery/arrival.
    // The merchandise is ordered at the end of the day(i) and received at the start of fourth day(i+3).
    // For each unit of inventory the carrying cost of each night is Rs.0.75.
    // Each unit out of stock when ordered results into the loss of goodwill worth Rs.2.0 per unit plus loss of Rs.16.00 net income,
    // that would have resulted in its sale. Or a total loss of Rs. 18.00 per unit forever.
    // The demand in a day can be for any number of units between 0 and 99, each equiprobable.
    // There is never more than one replenishment order outstanding.
    // Initially we have 115 units on hand and no reorder outstanding.

r = (floor(rand(1:90) * 100) + 1) // random number generator

x = [125, 125, 150, 175, 175] // reorder  point
y = [150, 250, 250, 250, 300] // reorder quantity

for pol = 1:5
   cur = 115	//no of tyres in stock
    p = 0		//profit
    l = 0		//loss
    day = 3		//reorder day left
   
	for i = 1 : 90
	limit = x(pol)
    reorder = y(pol)
	cus = r(i)	//no of customers on ith day
    
    if(i > day) then	//order arrived
    	cur = cur + reorder
        day = 90
    end
    
    if(cus > cur) then	//loss
    	p = p + (cur * 16)
    	l = l + (cus - cur) * 18
        cur = 0
    else
      	p = cus * 16	//no loss
        cur = cur - cus
        l = l + (cur * 0.75)
    end
    
    if((cur <= limit) & (day == 90)) then		//need to reorder
    	day = i+3
   	end
   
   end
    disp("pol",pol)
    disp("profit",p)
    disp("loss",l)
    disp("Remaining",cur)

end


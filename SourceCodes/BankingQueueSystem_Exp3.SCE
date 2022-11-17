// Simulation of Single Queue Single Server System
// The forms for loan arrive at a bank clerk’s desk for 
// processing on average every 4 minutes. Arrivals 
// are assumed to follow Poisson distribution. The 
// service rate is on average, 20 per hour. Calculate 
// the various queue characteristics.


service_rate = (rand(1,1,'normal')*100)+1 // random service rate value

processing_time = 4 // in minutes

lambda = (1/processing_time)*60 

ave_number_in_systems = lambda/(service_rate-lambda)

ave_number_in_queue = ave_number_in_systems - (lambda/service_rate)

average_queueing = ave_number_in_queue/lambda

average_time_in_system = average_queueing + (1/service_rate)

no_customer_probability = 1 - (lambda/service_rate)

ave_number_in_empty_queue = service_rate/(service_rate-lambda) 

// Display all values
disp("Service Rate: ", service_rate)
disp("Average number in systems: ", ave_number_in_systems)
disp("Average number in queue: ", ave_number_in_queue)
disp("Average queueing: ", average_queueing)
disp("Average time in System: ", average_time_in_system)
disp("Probability of no Customers: ",no_customer_probability)
disp("Average number in empty queue: ",ave_number_in_empty_queue)
// Simulation of Water reservoir for the problem discussed in class
// a reservoir has following inuput sources river flow and rainfall
// but it also has the following output domains evapouration, seepage, usage and gates
// we will find all these factors on a monthly basis
// Let's assume all the measurements in mega litres

n = 10 // number of months 
max_cap = 100 // Maximum capacity of reservoir
seepage = (grand(1,n,"bet",1,n)*10)+1  // Random list of seepage per month
rainfall = (grand(1,n,"bet",1,n)*100)+1  // Random list of rainfall per month
evaporation = (grand(1,n,"bet",1,n)*0.5)+1  // Random list of evaporation per month
river_flow = (grand(1,n,"bet",1,n)*1000)+1  // Random list of river flow water per month
usage = (grand(1,n,"bet",1,n))+1  // Random list of seepage per month
// disp(seepage,rainfall,river_flow)
remaining = (rand(1,n))*(0)-1
remaining(1) = rainfall(1)+river_flow(1) - (seepage(1)+evaporation(1)+usage(1)) + 1000
ch=0

con = modulo(floor(abs(rand(1,1,'normal')*n)+1),n)
for i=2:n
    if(ch==0)
        input = rainfall(i)+river_flow(i)
        output = (seepage(i)+evaporation(i)+usage(i))
        if(max_cap<remaining(i-1)) // draining dam in case of overflow
            disp('dam over flow, '+string(remaining(i-1)-max_cap)+' megalitres extra as input on month '+string((i-1)))
            while remaining(i-1)>max_cap then
                remaining(i-1)=remaining(i-1)-20
            end
        end
        if(i==con) // cloud burst in any one month
            disp('cloud burst! added 1000 megalitres of water in month '+string(i-1))
            remaining(i)=remaining(i)+1000
        end
    
        if(input<output)
            disp("dam can not be functional from month "+string((i-1)))
            ch = 1
        end
        remaining(i) =  input - output 
    end

    if(ch==1)
        break
    end
end
if(ch==0)
    disp('dam is successful for '+string(n)+' months')
end
    
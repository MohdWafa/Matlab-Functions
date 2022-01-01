function r=nlin(f)
% Done by Mohd Wafa 302539.
% This function takes the input of the required function and calculates 
% the roots of the function using the bijection method and tries to pass
% the test which are provided to check for the correctness of the given
% nlin function. If no roots are found the length of r is equal to 0, i.e.
% length(r)==0.

r=[];   % the main vector of roots 

% intervals

a2=-5500;  %lower 
b2=5500;  %upper

j=0;
% incrementing i by 0.01
for i=a2:0.01:b2
j=i+0.01;
bisections(i,j);  %user built function


end

% user built function
function bisections(a1, b1)
% Done by Mohd Wafa 302539.
a=a1;
b=b1;
% checks if a1 is real, f(b1) is real,f(a1) is not NaN, and f(b1) is not
% NaN

if(isreal(f(a1))==true && isreal(f(b1))==true && isnan(f(a1))==false... 
    && isnan(f(b1))==false)
    
else
    return
end

% MAIN BISECTION ALGORITHM
if f(a)*f(b)>=0   %checks if roots is in the interval a b
   return;
end

xl=a;
xr=b;
x(1) = (xl + xr)/2;  % halving the interval

i=1;

while ( i<10000 )
    
    xm=(xl + xr)/2;  % halving the interval
    temp = xl;
    xl=xm;  % switching values of x1 and xm
    
    if f(xl)*f(xr)>0  % checks for roots in interval x1 xr
        xl=temp;
        xr=xm;  % switching values of xr and xm
    end
    
    if f(xl)==0  % checks if x1 is a root
        x(i+1) = xl;
        i=i+1;
    elseif f(xr)==0  % checks if xr is a root
        x(i+1) = xr;
        i=i+1;
    else
        x(i+1)=xm;  % assigns xm as one of the roots
        i=i+1;
    end
end

% checks if x(i) is real, f(x(i)) is real, and f(x(i)) is not NaN
 if (isreal(x(i))==true && isreal(f(x(i)))==true && isnan(f(x(i)))==false)
     r(end+1) = x(i);  % adds all the zeros(if any) to r, else length(r)=0 
                       % as x would be a empty vector 
end
end


end




    
    
    
    

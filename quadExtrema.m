%Hannah Ceisler
%Project 1, Task 3
%Prints min and max of a parabola inputed by the user

a = input("enter a: ");
b = input("enter b: ");
c = input("enter c: ");
L = input("enter a left bound x:    ");
R = input("enter a right bound x:   ");

vertex = -b/2;

%sets base for all three conditions with right bound point
lowest = a*R^2+b*R+c;
highest = a*R^2+b*R+c;

%checks if vertex is max or min if in between L and R
if vertex < R && L < vertex
    if lowest > a*vertex^2+b*vertex+c
        lowest = a*vertex^2+b*vertex+c;
    end
    if highest < a*vertex^2+b*vertex+c
        highest = a*vertex^2+b*vertex+c;
    end
end

%checks if L is max or min
if lowest > a*L^2+b*L+c
   lowest = a*L^2+b*L+c;
end
if highest < a*L^2+b*L+c
   highest = a*L^2+b*L+c;
end

fprintf("The highest point of %gx^2 + %gx + %g over the interval [%g, %g] is %g\n", a, b, c, L, R, highest)
fprintf("The lowest point of %gx^2 + %gx + %g over the interval [%g, %g] is %g\n", a, b, c, L, R, lowest)
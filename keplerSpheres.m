%Project 1, Task 1
%Hannah Ceisler
%Find the radius of reach of six spheres if there is a platonic solid
%embedded in between each sphere


%This calculates each radius by finding the e of the shape and then solving for
%the inradius. Then this inradius is equal to the outradius of the next
%circle, allowing us to solve for the next shape's e and repeat this
%process. After each radius is calculated, the circumference is calculated
r1 = 1;
c1 = 2*pi*r1;
e1 = ((4/sqrt(6))*r1);
%sphere2
r2 = (sqrt(6)/12)*e1;
e2 = r2*(2/sqrt(3));
c2 = 2*pi*r2;
%sphere3
r3 = .5*e2;
e3 = r3 * (2/sqrt(2));
c3 = 2*pi*r3;
%sphere4
r4 = (sqrt(6)/6)*e3;
e4 = r4*4*(1/(sqrt(15)+sqrt(3)));
c4 = 2*pi*r4;
%sphere5
r5 = e4*(sqrt(250+(110*sqrt(5)))/20);
e5 = r5*4*(1/sqrt(10+sqrt(20)));
c5 = 2*pi*r5;
%sphere6
r6 = e5*(sqrt(42+(18*sqrt(5)))/12);
c6 = 2*pi*r6;

%prints out results
fprintf("Sphere           Radius            Circumference\n")
fprintf("--------------------------------------------------\n")
fprintf("1               %.9f          %.9f     \n",r1,c1)
fprintf("1               %.9f          %.9f     \n",r2,c2)
fprintf("1               %.9f          %.9f     \n",r3,c3)
fprintf("1               %.9f          %.9f     \n",r4,c4)
fprintf("1               %.9f          %.9f     \n",r5,c5)
fprintf("1               %.9f          %.9f     \n",r6,c6)



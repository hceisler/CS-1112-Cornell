%Project 1, Task 2
%Hannah Ceisler
% Script castShadow
% Position a light source and a box in a room and determine the extent of
% the shadow cast by the box.

% Set up the window
close all         % Close all previous figure windows
figure            % Start a new figure window
hold on           % Keep the same set of axes (multiple plots on same axes)
axis equal        % unit lengths on x- and y-axis are equal
axis([0 10 0 10]) % x-axis limits [0,10], y-axis limits [0,10]

% Top left corner of box, point T
xt=5;  yt=7;
plot(xt, yt, 'bo')           % Format: Blue circle - point T
plot([xt xt], [1 yt], 'k:')  % Format: black dotted line
text(xt, yt, '  T')            %Writes the letter T next to point

%%% Do not change the code above %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Modify the code below %%%%%%%%%%

% Light source, point L
xL=rand()*5;
yL=rand()*3+yt;

plot(xL, yL, 'r*')           % Format: Red asterisk - point L
text(xL, yL, '  L')            %Writes the letter L next to point

% Draw a cyan solid line from point T to (10,8))
plot([xt 10],[yt 7], 'c-')   % Format: Cyan line

% User-clicked point
title('Click on the dotted line below')
[xu, yu]= ginput(1);        %accepts onbe mouse click as user input and stores coordinates
plot(xt, yu, 'm+')          % Format: Magenta cross - point U
text(xt, yu, '  U')         %Writes the letter U next to point
plot([xt xt],[yt yu], 'c-')   % Format: Cyan line
plot([xt 10],[yu yu], 'c-')   % Format: Cyan line
plot([10 10],[yu 7], 'c-')   % Format: Cyan line
messageToShow= sprintf('You clicked at (%.1f,%.1f)', xu, yu);
title(messageToShow)

%calculates where to plot the line to
slope = (yL - yu)/(xL-xt);
f10 = slope*(10-xt)+yu;
%if the point at f(10) is greater than one, we know it will only have a
%one-sided shadow because it intercepts the line x=10. If it is less than
%one, then the line intercepts the x-axis and will have two shadow lines.
if f10 < 0
    xint = (-yu/slope)+xt;
    plot([xL xint],[yL 0], 'r:')   % Format: red dotted line
    plot([xint 10],[0 0],'b-','LineWidth',3)
    plot([10 10],[0 yu],'b-','LineWidth',3)
else
    plot([xL 10],[yL f10], 'r:')   % Format: Cyan line
    plot([10 10],[f10 yu],'b-','LineWidth',3)
end

messageToShow= sprintf('Light source at (%.1f,%.1f)', xL, yL);
title(messageToShow)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Do not change the code below %%%

hold off
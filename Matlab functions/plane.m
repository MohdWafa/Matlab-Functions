% Excercise 2 Task-1
% Redo the plane.m example using movie and drawnow. 


function plane()
% Done by Mohd Wafa 302539.
% This function is the redo function of the one presented in the task.
% Basically, I switched places for the countdown timer and the initial slow
% animation to render the needed frames before the counter. When the window
% is visible the timer starts and the smooth animation begins just how it
% was intended.
% plane data
S = [0 1 0 3 3  3 3 0  1 0 -2 0; ...
     0 3 0 0 1 -1 0 0 -3 0  0 0];
                           % x,y relative coordinates of consecutive points
thickness = 10; % thickness

% window for the figure
scr = get(0,'ScreenSize');
fpos = [0.5 * scr(3)-0.4 * scr(4) 0.1 * scr(4) 0.8 * scr(4) 0.8 * scr(4)];
fh = figure('position',fpos); % creates figure windows, returns handle
set(fh,'visible','off');  %turning the visibility of the figure off to 
                          %render the animation of the plane moving slowly
                          %at first.
set(fh,'menubar','none'); % no menu bar
h = plot(S(1,:),S(2,:),'linewidth',thickness); % plot the plane
axis([-20 20 -20 20])
axis off

% start
a = 0; % angle
p = 0; % shift
speed = 0.2; % speed
a_delta = pi/250; % angular speed


for i = 1:125 % total rotation of pi/2

    a = a + a_delta; % update the angle
    p = p - speed * [cos(a); sin(a)]; % adjust the position, note the -
    G = [cos(a) -sin(a); sin(a)  cos(a)]; 
                                    % rotation matrix (counterclockwise)
    SP = G * S + p; % rotate and shift S


    plot(set(h,'XData',SP(1,:),'YData',SP(2,:))); % new data for handle h
    pause(0.04);
    F(i) = getframe; %collects all the rendered changes in the *slow* 
                     %animation and smoothens out the animation in the
                     %movie function.
    drawnow;
end
set(fh,'visible','on');
% countdown
N = 5;
th = title(num2str(N),'fontsize' ...
    ,20); % creates title, returns handle to the title
for N = N - 1:-1:0
    pause(1)
    set(th,'String',num2str(N));
end


movie(F,1,40) ;  %movie function to play the animation in 40 FPS. Please 
                 %note, if the frames are still slow for you, increase the
                 %numerical value in this function.

% bye bye
set(th,'String','Bye, bye!');
pause(1.5);
close(fh);
end


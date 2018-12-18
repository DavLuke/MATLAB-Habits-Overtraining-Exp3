%a small 20pix red point is presented at the center of the screen, during a
%random duration, between 0.2 and 0.3 seconds
dotColor = red;

% Dot size in pixels
dotSizePix = 20;

if CurrentStim == 3 % no fixation for the arrow trials
else
    Screen('DrawDots', wd, [xPos yPos], dotSizePix, dotColor, [], 2);
    a = 0.2;
    b = 0.3;
    r = (b-a).*rand() + a;
    Screen('Flip', wd);
    WaitSecs (r);
end
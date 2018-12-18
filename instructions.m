escapeKey = KbName('ESCAPE');
spacebar = KbName('space');
leftKey = KbName('LeftArrow');
rightKey = KbName('RightArrow');
activeKeys = [leftKey rightKey escapeKey spacebar];


exitKey = escapeKey;


InstrScreens = 0;
% restrict the keys for keyboard input to the keys we want
RestrictKeysForKbCheck(activeKeys);
exitInstr = false;
insMatrix = [instr1, instr2, instr3, instr4, instr5, instr6, instr7, instr8, instr9];
n=1;
Screen('DrawTexture', wd, insMatrix(n),[], rect.stim{6});
Screen('Flip', wd);
WaitSecs(0.2);KbWait;
if (DATA.group == 1 && DATA.ses == 1) || (DATA.group == 2 && DATA.ses == 3)
    while exitInstr == false
        [keyIsDown, secs, keyCode] = KbCheck;
        if keyCode(exitKey)
            exitInstr = true;
        elseif keyCode(leftKey)
            n=n-1;
            if n < 1
                n=1;
            end
            Screen('DrawTexture', wd, insMatrix(n),[], rect.stim{6});
            Screen('Flip', wd);
            WaitSecs(0.2);KbWait;
        elseif keyCode(rightKey)
            n=n+1;
            if n < 1
                n=1;
            elseif n > 9
                n = 9;
            end
            Screen('DrawTexture', wd, insMatrix(n),[], rect.stim{6});
            Screen('Flip', wd);
            if n == 6
            WaitSecs(3);KbWait;
            else
            WaitSecs(0.2);KbWait;
            end
        end
     end
else
    clear insMatrix
    insMatrix = [instr1, instr2, instr3, instr4, instr5, instr9];
    while exitInstr == false
        [keyIsDown, secs, keyCode] = KbCheck;
        if keyCode(exitKey)
            exitInstr = true;
        elseif keyCode(leftKey)
            n=n-1;
            if n < 1
                n=1;
            end
            Screen('DrawTexture', wd, insMatrix(n),[], rect.stim{6});
            Screen('Flip', wd);
            WaitSecs(0.2);KbWait;
        elseif keyCode(rightKey)
            n=n+1;
            if n < 1
                n=1;
            elseif n > 6
                n = 6;
            end
            Screen('DrawTexture', wd, insMatrix(n),[], rect.stim{6});
            Screen('Flip', wd);
            WaitSecs(0.2);KbWait;

        end
     end
end
% reset the keyboard input checking for all keys
RestrictKeysForKbCheck ([]);


allConditions = nan(numBlocks, (trialsxblock));
for i =1:numBlocks
    
    yy = trialsxblock/4;
    HV1 = 1;
    HV2 = 2;
    LV1 = 3;
    LV2 = 4;
    
    rightStimuli = [HV1, HV2, LV1, LV2];
    rightStimuli =repmat(rightStimuli,1,yy);    
    
    ww(1,1:trialsxblock) = rightStimuli;
    ww_rand = ww(randperm(length(ww)));    
    
    allConditions(i,:) = ww_rand(:);
    
end
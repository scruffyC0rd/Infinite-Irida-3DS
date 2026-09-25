function onEvent(name, value1, value2)
    if name == 'Fade Characters' then
        local fadeTime = tonumber(value2) or 1
        if value1 == 'dadout' then
            doTweenAlpha('dadFadeOut', 'dad', 0, fadeTime, 'linear')
        elseif value1 == 'dadin' then
            doTweenAlpha('dadFadeIn', 'dad', 1, fadeTime, 'linear')
            
        elseif value1 == 'bfout' then
            doTweenAlpha('bfFadeOut', 'boyfriend', 0, fadeTime, 'linear')
        elseif value1 == 'bfin' then
            doTweenAlpha('bfFadeIn', 'boyfriend', 1, fadeTime, 'linear')
            
        elseif value1 == 'bothout' then
            doTweenAlpha('dadFadeOut', 'dad', 0, fadeTime, 'linear')
            doTweenAlpha('bfFadeOut', 'boyfriend', 0, fadeTime, 'linear')
        elseif value1 == 'bothin' then
            doTweenAlpha('dadFadeIn', 'dad', 1, fadeTime, 'linear')
            doTweenAlpha('bfFadeIn', 'boyfriend', 1, fadeTime, 'linear')
            
        elseif value1 == 'gfout' then
            doTweenAlpha('gfFadeOut', 'gf', 0, fadeTime, 'linear')
        elseif value1 == 'gfin' then
            doTweenAlpha('gfFadeIn', 'gf', 1, fadeTime, 'linear')
        end
    end
end
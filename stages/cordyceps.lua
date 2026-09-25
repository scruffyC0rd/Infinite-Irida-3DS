function onCreate()
	makeLuaSprite('bloom', 'bg/cordyceps/cordyceps', -1000, -650);
	scaleObject('bloom', 3.5, 3.5);
	addLuaSprite('bloom', false);	
	setProperty('bloom.alpha', 0)
	setProperty('boyfriend.alpha', 0)
	setProperty('dad.alpha', 0)	
end

function onEvent(name, value1, value2)
    if name == 'Trigger Stage Event' then 
        if value1 == 'Cordyceps' then
            if value2 == 'Fade In' then
                doTweenAlpha('bloomIn', 'bloom', 1, 0.9, 'linear')
            elseif value2 == 'Fade Out' then
                doTweenAlpha('bloomOut', 'bloom', 0, 0.9, 'linear')
            end
        end
    end
end
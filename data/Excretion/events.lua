function makeFlash(time)
	setProperty('white.alpha', 1)
	doTweenAlpha('whitefade', 'white', 0, time, 'ease-out')
end

-- the animations
function onStepHit()
	if curStep == 791 then
		playAnim('bf', 'scream', false)
	end

	if curStep == 1110 then
		playAnim('bf', 'ew', false)
	end

	if curStep == 0 then
		startVideo('E_Intro', false)
	end

	if curStep == 2319 then
		startVideo('E_Trans', false)
		setProperty('static.visible', false)
	end

	if curStep == 2951 then
		startVideo('E_water', false)
	end

	if curStep == 3943 then
		startVideo('E_memo', false)
	end

	if curStep == 4510 then
		startVideo('E_Lyrics', false)
	end
end

-- stage changes
function onBeatHit()
	
	if curBeat == 32 then
		makeFlash(0.5)
		setProperty('stages.visible', true)
		addAnimationByPrefix('stages', 'play', 'phase1', 24, false)
	end

	if curBeat == 196 then
		setProperty('stages.visible', false)
	end

	if curBeat == 228 then
		makeFlash(0.5)
		setProperty('stages.visible', true)
		addAnimationByPrefix('stages', 'play', 'phase2', 24, false)
	end

	if curBeat == 446 then	
		setProperty('E_trans.visible', true)
		objectPlayAnimation('E_trans', 'play', false)
	end

	if curBeat == 452 then			
		setProperty('E_trans.visible', false)
		setProperty('stages.visible', false)
	end

	if curBeat == 516 then
		makeFlash(0.5)			
		setProperty('static.visible', true)
	end

	if curBeat == 600 then			
		makeFlash(0.5)
		setProperty('stages.visible', true)
	end

	if curBeat == 668 then			
		setProperty('stages.visible', false)
	end

	if curBeat == 946 then
		makeFlash(0.5)
		addAnimationByPrefix('finale', 'play', 'Surf', 24, false)			
		setProperty('finale.visible', true)
	end

	if curBeat == 984 then			
		setProperty('finale.visible', false)
		objectPlayAnimation('finale', 'play', false)
	end

	if curBeat == 1090 then
		makeFlash(0.5)
		addAnimationByPrefix('finale', 'play', 'Castle', 24, false)			
		setProperty('finale.visible', true)
	end

	if curBeat == 1126 then			
		setProperty('finale.visible', false)
		objectPlayAnimation('finale', 'play', false)
	end
end
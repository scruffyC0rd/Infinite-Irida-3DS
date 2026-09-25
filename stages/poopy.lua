setProperty("boyfriend.alpha", 0)
setProperty("dad.alpha", 0)

function onCreate()
	makeAnimatedLuaSprite('stages', 'bg/execretion/stages', 100, 0)
	addLuaSprite('stages', false)
	scaleObject('stages', 3, 3);
	setProperty('stages.visible', false)
	setProperty('stages.antialiasing', false)

	makeAnimatedLuaSprite('finale', 'bg/execretion/stages2', 50, -100)
	addLuaSprite('finale', false)
	scaleObject('finale', 3, 3);
	setProperty('finale.visible', false)
	setProperty('finale.antialiasing', false)
	--Static BG
	makeAnimatedLuaSprite('static', 'bg/execretion/stress', 540, 0)
	addLuaSprite('static', false)
	scaleObject('static', 5.5, 5);
	setProperty('static.visible', false)
    addAnimationByPrefix('static', 'play', 'static', 24, true)
	setProperty('static.antialiasing', false)
	--white flash
	makeLuaSprite('white','bg/white', 0, 0)
	scaleObject('white', 100, 100)
	addLuaSprite('white', true)
	setObjectCamera('white', 'hud')
	setProperty('white.alpha', 0)
    -- jeffy swiping the screen
	makeAnimatedLuaSprite('E_trans', 'bg/execretion/E_trans', 100, 50)
	addLuaSprite('E_trans', false)
	scaleObject('E_trans', 1.8, 1.7);
	setProperty('E_trans.visible', false)
    addAnimationByPrefix('E_trans', 'play', 'tran', 20, false)
    setObjectCamera('E_trans', 'hud') -- Locks to HUD
	objectPlayAnimation('E_trans', 'play', false)
	setProperty('E_trans.antialiasing', false)
end
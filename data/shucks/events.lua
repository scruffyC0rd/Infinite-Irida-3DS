function onSongStart()
    startVideo('S_Door', false)
end

function onBeatHit()
	if curBeat == 640 then
		startVideo('S_Rose', false)
	end

	if curBeat == 794 then
		startVideo('S_Lyrics', false)
	end

	if curBeat == 923 then
		startVideo('S_Marvin', false)
	end
end
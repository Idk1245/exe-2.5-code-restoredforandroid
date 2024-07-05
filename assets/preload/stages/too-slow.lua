function onCreate()
	makeLuaSprite('bgEncore', 'bgs/bg/TooSlowEncore', -1100, -500);
	scaleObject('bgEncore', 1.25, 1.25);
	setScrollFactor('bgEncore', 1, 1);
	setProperty('bgEncore.antialiasing', true);
	if songName == "too-slow-encore" then
		addLuaSprite('bgEncore', false)
	end
end

function onUpdate(elapsed)

    songPos = getPropertyFromClass('Conductor', 'songPosition');
 
    currentBeat = (songPos / 300) * (bpm / 180)
	
	if songName == "too-slow-encore" then
		if curStep == 386 then
			setProperty('bgEncore.alpha', 0);
		end
	end
end
function opponentNoteHit(id, direction, noteType, isSustainNote)  
	if curStep >= 138 and curStep < 510 then
    cameraShake('game', 0.01, 0.09)
	end
	if curStep >= 756 and curStep < 1451 then
    cameraShake('game', 0.01, 0.09)
	end
  health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.005);
    end
end
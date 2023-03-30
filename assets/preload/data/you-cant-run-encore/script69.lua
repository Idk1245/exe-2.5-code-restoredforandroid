function opponentNoteHit(id, direction, noteType, isSustainNote)  
	if curStep >= 138 and curStep < 510 then
    cameraShake('game', 0.01, 0.09)
	end
	if curStep >= 756 and curStep < 1451 then
    cameraShake('game', 0.01, 0.09)
	end
end

function onCreate()

	get = getRandomInt(1,1)

end



function onUpdate()

		if get == 1 then

			setTextString("botplayTxt", "ITS NOT OVERCHARTED YOU'RE JUST BAD")


	end

end
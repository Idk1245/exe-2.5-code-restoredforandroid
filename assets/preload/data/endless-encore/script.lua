local changeNotes = 0
function onUpdate()
    if changeNotes == 3 then
        for notesLength = 0,getProperty('notes.length') do
            if getPropertyFromGroup('notes',notesLength,'noteType') == '' and getPropertyFromGroup('notes',notesLength,'texture') == 'Majin_Notes' then
                setPropertyFromGroup('notes',notesLength,'texture','Majin_Notes')
            end
        end
	end
end

function onUpdate(elapsed)

    songPos = getPropertyFromClass('Conductor', 'songPosition');
 
    currentBeat = (songPos / 300) * (bpm / 180)
	
	if songName == "endless-encore" then
		if curStep == 0 then
            changeNotes = 3
            for strumLineNotes = 0,7 do
               setPropertyFromGroup('strumLineNotes',strumLineNotes,'texture','Majin_Notes')
            end
		end
	end
end
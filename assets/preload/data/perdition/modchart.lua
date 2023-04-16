function onCreate() --satanos

setPropertyFromClass('ClientPrefs','middleScroll', false)
end

function onCreatePost()
for i = 0, getProperty('playerStrums.length')-1 do
setPropertyFromGroup('playerStrums',i,'downScroll',false)
end
for i = 0, getProperty('opponentStrums.length')-1 do
setPropertyFromGroup('opponentStrums',i,'downScroll',true)
end


noteTweenX('play0', 4, 415, 0.1)
noteTweenX('play1', 5, 525, 0.1)
noteTweenX('play2', 6, 635, 0.1)
noteTweenX('play3', 7, 745, 0.1)

noteTweenY('opY0', 0, 550, 0.1)
noteTweenY('opY1', 1, 550, 0.1)
noteTweenY('opY2', 2, 550, 0.1)
noteTweenY('opY3', 3, 550, 0.1)

noteTweenY('playY0', 4, 50, 0.1)
noteTweenY('playY1', 5, 50, 0.1)
noteTweenY('playY2', 6, 50, 0.1)
noteTweenY('playY3', 7, 50, 0.1)

noteTweenX('op0', 0, 415, 0.1)
noteTweenX('op1', 1, 525, 0.1)
noteTweenX('op2', 2, 635, 0.1)
noteTweenX('op3', 3, 745, 0.1)
end


function onEvent(name, value1, value2)
   if name == 'hola' then
   if value1 == '1' then --160 step
noteTweenX('play0', 4, 715, 0.8,'quadOut')
noteTweenX('play1', 5, 825, 0.8,'quadOut')
noteTweenX('play2', 6, 935, 0.8,'quadOut')
noteTweenX('play3', 7, 1045, 0.8,'quadOut')

noteTweenAngle('play0a', 4, 360, 0.8,'quadOut')
noteTweenAngle('play1a', 5, 360, 0.8,'quadOut')
noteTweenAngle('play2a', 6, 360, 0.8,'quadOut')
noteTweenAngle('play3a', 7, 360, 0.8,'quadOut')

noteTweenX('op0', 0, 115, 0.8,'quadOut')
noteTweenX('op1', 1, 225, 0.8,'quadOut')
noteTweenX('op2', 2, 335, 0.8,'quadOut')
noteTweenX('op3', 3, 445, 0.8,'quadOut')

noteTweenAngle('op0a', 0, 360, 0.8,'quadOut')
noteTweenAngle('op1a', 1, 360, 0.8,'quadOut')
noteTweenAngle('op2a', 2, 360, 0.8,'quadOut')
noteTweenAngle('op3a', 3, 360, 0.8,'quadOut')
end
   if value1 == '2' then --432 step
noteTweenAlpha('op0', 0, 0, 0.5)
noteTweenAlpha('op1', 1, 0, 0.5)
noteTweenAlpha('op2', 2, 0, 0.5)
noteTweenAlpha('op3', 3, 0, 0.5)

noteTweenAlpha('player0', 4, 0, 0.5)
noteTweenAlpha('player1', 5, 0, 0.5)
noteTweenAlpha('player2', 6, 0, 0.5)
noteTweenAlpha('player3', 7, 0, 0.5)
end
   if value1 == '3' then --452 step
noteTweenX('play0', 4, 415, 0.1)
noteTweenX('play1', 5, 525, 0.1)
noteTweenX('play2', 6, 635, 0.1)
noteTweenX('play3', 7, 745, 0.1)

noteTweenY('playY0', 4, 325, 0.1)
noteTweenY('playY1', 5, 325, 0.1)
noteTweenY('playY2', 6, 325, 0.1)
noteTweenY('playY3', 7, 325, 0.1)

for i = 0,1 do
setPropertyFromGroup('playerStrums',i,'downScroll',false)
end

for i = 2,3 do
setPropertyFromGroup('playerStrums',i,'downScroll',true)
end
end
   if value1 == '4' then --480 step
noteTweenAlpha('player0', 4, 1, 0.5)
noteTweenAlpha('player1', 5, 1, 0.5)
noteTweenAlpha('player2', 6, 1, 0.5)
noteTweenAlpha('player3', 7, 1, 0.5)
end
   if value1 == '5' then --560 step
noteTweenY('playY0', 4, 50, 0.5,'quartOut')
noteTweenY('playY1', 5, 50, 0.5,'quartOut')
noteTweenY('playY2', 6, 550, 0.5,'quartOut')
noteTweenY('playY3', 7, 550, 0.5,'quartOut')
end
   if value1 == '6' then --688 step
noteTweenAlpha('op0', 0, 1, 0.5)
noteTweenAlpha('op1', 1, 1, 0.5)
noteTweenAlpha('op2', 2, 1, 0.5)
noteTweenAlpha('op3', 3, 1, 0.5)

noteTweenY('opY0', 0, 50, 0.5,'quadOut')
noteTweenY('opY1', 1, 50, 0.5,'quadOut')
noteTweenY('opY2', 2, 50, 0.5,'quadOut')
noteTweenY('opY3', 3, 50, 0.5,'quadOut')

noteTweenX('play0', 4, 715, 0.6,'quadOut')
noteTweenX('play1', 5, 825, 0.7,'quadOut')
noteTweenX('play2', 6, 935, 0.8,'quadOut')
noteTweenX('play3', 7, 1045, 0.9,'quadOut')

noteTweenY('playY0', 4, 50, 0.6,'quadOut')
noteTweenY('playY1', 5, 50, 0.7,'quadOut')
noteTweenY('playY2', 6, 50, 0.8,'quadOut')
noteTweenY('playY3', 7, 50, 0.9,'quadOut')

for i = 0, getProperty('opponentStrums.length')-1 do
setPropertyFromGroup('opponentStrums',i,'downScroll',false)
end

for i = 0, getProperty('playerStrums.length')-1 do
setPropertyFromGroup('playerStrums',i,'downScroll',false)
end
end
   if value1 == '7' then --944 step
noteTweenX('play0', 4, 415, 0.5,'quadOut')
noteTweenX('play1', 5, 525, 0.5,'quadOut')
noteTweenX('play2', 6, 635, 0.5,'quadOut')
noteTweenX('play3', 7, 745, 0.5,'quadOut')

noteTweenX('op0', 0, 415, 0.5,'quadOut')
noteTweenX('op1', 1, 525, 0.5,'quadOut')
noteTweenX('op2', 2, 635, 0.5,'quadOut')
noteTweenX('op3', 3, 745, 0.5,'quadOut')

noteTweenAlpha('op0a', 0, 0, 0.5)
noteTweenAlpha('op1a', 1, 0, 0.5)
noteTweenAlpha('op2a', 2, 0, 0.5)
noteTweenAlpha('op3a', 3, 0, 0.5)
end
   if value1 == '8' then --1192 step
noteTweenX('op0', 0, 715, 0.5,'quadOut')
noteTweenX('op1', 1, 825, 0.5,'quadOut')
noteTweenX('op2', 2, 935, 0.5,'quadOut')
noteTweenX('op3', 3, 1045, 0.5,'quadOut')

noteTweenX('play0', 4, 115, 0.5,'quadOut')
noteTweenX('play1', 5, 225, 0.5,'quadOut')
noteTweenX('play2', 6, 335, 0.5,'quadOut')
noteTweenX('play3', 7, 445, 0.5,'quadOut')

noteTweenAlpha('op0a', 0, 1, 0.5)
noteTweenAlpha('op1a', 1, 1, 0.5)
noteTweenAlpha('op2a', 2, 1, 0.5)
noteTweenAlpha('op3a', 3, 1, 0.5)
end
   if value1 == '9' then --1455 step
noteTweenX('play0', 4, 415, 0.3,'elasticInOut')
noteTweenX('play1', 5, 525, 0.3,'elasticInOut')
noteTweenX('play2', 6, 635, 0.3,'elasticInOut')
noteTweenX('play3', 7, 745, 0.3,'elasticInOut')

noteTweenX('op0', 0, 415, 0.3,'elasticInOut')
noteTweenX('op1', 1, 525, 0.3,'elasticInOut')
noteTweenX('op2', 2, 635, 0.3,'elasticInOut')
noteTweenX('op3', 3, 745, 0.3,'elasticInOut')

noteTweenAlpha('op0a', 0, 0.25, 0.3)
noteTweenAlpha('op1a', 1, 0.25, 0.3)
noteTweenAlpha('op2a', 2, 0.25, 0.3)
noteTweenAlpha('op3a', 3, 0.25, 0.3)
end
   if value1 == '10' then --1472 step
noteTweenY('playY0', 4, 550, 0.2)
noteTweenY('playY1', 5, 550, 0.2)
noteTweenY('playY2', 6, 550, 0.2)
noteTweenY('playY3', 7, 550, 0.2)

for i = 0, getProperty('playerStrums.length')-1 do
setPropertyFromGroup('playerStrums',i,'downScroll',true)
end

noteTweenY('opY0', 0, 550, 0.2)
noteTweenY('opY1', 1, 550, 0.2)
noteTweenY('opY2', 2, 550, 0.2)
noteTweenY('opY3', 3, 550, 0.2)

for i = 0, getProperty('opponentStrums.length')-1 do
setPropertyFromGroup('opponentStrums',i,'downScroll',true)
end
end
   if value1 == '11' then --1488 step
noteTweenY('playY0', 4, 50, 0.2)
noteTweenY('playY1', 5, 50, 0.2)
noteTweenY('playY2', 6, 50, 0.2)
noteTweenY('playY3', 7, 50, 0.2)

for i = 0, getProperty('playerStrums.length')-1 do
setPropertyFromGroup('playerStrums',i,'downScroll',false)
end

noteTweenY('opY0', 0, 50, 0.2)
noteTweenY('opY1', 1, 50, 0.2)
noteTweenY('opY2', 2, 50, 0.2)
noteTweenY('opY3', 3, 50, 0.2)

for i = 0, getProperty('opponentStrums.length')-1 do
setPropertyFromGroup('opponentStrums',i,'downScroll',false)
end
end
   if value1 == '12' then --1504 step
noteTweenY('playY0', 4, 550, 0.2)
noteTweenY('playY1', 5, 550, 0.2)
noteTweenY('playY2', 6, 550, 0.2)
noteTweenY('playY3', 7, 550, 0.2)

for i = 0, getProperty('playerStrums.length')-1 do
setPropertyFromGroup('playerStrums',i,'downScroll',true)
end

noteTweenY('opY0', 0, 550, 0.2)
noteTweenY('opY1', 1, 550, 0.2)
noteTweenY('opY2', 2, 550, 0.2)
noteTweenY('opY3', 3, 550, 0.2)

for i = 0, getProperty('opponentStrums.length')-1 do
setPropertyFromGroup('opponentStrums',i,'downScroll',true)
end
end
   if value1 == '13' then --1520 step
noteTweenY('playY0', 4, 50, 0.2)
noteTweenY('playY1', 5, 50, 0.2)
noteTweenY('playY2', 6, 50, 0.2)
noteTweenY('playY3', 7, 50, 0.2)

for i = 0, getProperty('playerStrums.length')-1 do
setPropertyFromGroup('playerStrums',i,'downScroll',false)
end

noteTweenY('opY0', 0, 50, 0.2)
noteTweenY('opY1', 1, 50, 0.2)
noteTweenY('opY2', 2, 50, 0.2)
noteTweenY('opY3', 3, 50, 0.2)

for i = 0, getProperty('opponentStrums.length')-1 do
setPropertyFromGroup('opponentStrums',i,'downScroll',false)
end
end
   if value1 == '14' then --1584 step
for i = 4, 7 do 
      setPropertyFromGroup("strumLineNotes", i, "x", 160)
      setPropertyFromGroup("strumLineNotes", i, "y", 110 + (i % 4) * 112 )
      setPropertyFromGroup("strumLineNotes", i, "direction", 0 )
   end
   for i = 0, 3 do 
      setPropertyFromGroup("strumLineNotes", i, "x", 1000)
      setPropertyFromGroup("strumLineNotes", i, "y", 110 + (i % 4) * 112 )
      setPropertyFromGroup("strumLineNotes", i, "direction", 180 )
   end
end
   if value1 == '15' then --1600 step
for i = 4, 7 do 
      setPropertyFromGroup("strumLineNotes", i, "x", 0)
      setPropertyFromGroup("strumLineNotes", i, "y", 0)
      setPropertyFromGroup("strumLineNotes", i, "direction", 90 )
   end
   for i = 0, 3 do 
      setPropertyFromGroup("strumLineNotes", i, "x", 0)
      setPropertyFromGroup("strumLineNotes", i, "y", 0)
      setPropertyFromGroup("strumLineNotes", i, "direction", 90 )
   end
   
noteTweenY('playY0', 4, 550, 0.1)
noteTweenY('playY1', 5, 550, 0.1)
noteTweenY('playY2', 6, 550, 0.1)
noteTweenY('playY3', 7, 550, 0.1)

for i = 0, getProperty('playerStrums.length')-1 do
setPropertyFromGroup('playerStrums',i,'downScroll',true)
end

noteTweenY('opY0', 0, 50, 0.1)
noteTweenY('opY1', 1, 50, 0.1)
noteTweenY('opY2', 2, 50, 0.1)
noteTweenY('opY3', 3, 50, 0.1)

for i = 0, getProperty('opponentStrums.length')-1 do
setPropertyFromGroup('opponentStrums',i,'downScroll',false)
end

noteTweenX('play0', 4, 415, 0.1)
noteTweenX('play1', 5, 525, 0.1)
noteTweenX('play2', 6, 635, 0.1)
noteTweenX('play3', 7, 745, 0.1)

noteTweenX('op0', 0, 415, 0.1)
noteTweenX('op1', 1, 525, 0.1)
noteTweenX('op2', 2, 635, 0.1)
noteTweenX('op3', 3, 745, 0.1)
    
end
   if value1 == '16' then --1644 step
noteTweenAlpha('op0a', 0, 1, 0.2)
noteTweenAlpha('op1a', 1, 1, 0.2)
noteTweenAlpha('op2a', 2, 1, 0.2)
noteTweenAlpha('op3a', 3, 1, 0.2)

noteTweenX('op0', 0, 715, 0.1)
noteTweenX('op1', 1, 825, 0.1)
noteTweenX('op2', 2, 935, 0.1)
noteTweenX('op3', 3, 1045, 0.1)

noteTweenX('play0', 4, 115, 0.1)
noteTweenX('play1', 5, 225, 0.1)
noteTweenX('play2', 6, 335, 0.1)
noteTweenX('play3', 7, 445, 0.1)

noteTweenY('playY0', 4, 50, 0.1)
noteTweenY('playY1', 5, 50, 0.1)
noteTweenY('playY2', 6, 50, 0.1)
noteTweenY('playY3', 7, 50, 0.1)

noteTweenY('opY0', 0, 550, 0.1)
noteTweenY('opY1', 1, 550, 0.1)
noteTweenY('opY2', 2, 550, 0.1)
noteTweenY('opY3', 3, 550, 0.1)

for i = 0, getProperty('playerStrums.length')-1 do
setPropertyFromGroup('playerStrums',i,'downScroll',false)
end

for i = 0, getProperty('opponentStrums.length')-1 do
setPropertyFromGroup('opponentStrums',i,'downScroll',true)
end
end
   if value1 == '17' then --1744 step
noteTweenAlpha('op0', 0, 0, 0.5)
noteTweenAlpha('op1', 1, 0, 0.5)
noteTweenAlpha('op2', 2, 0, 0.5)
noteTweenAlpha('op3', 3, 0, 0.5)

noteTweenAlpha('player0', 4, 0, 0.5)
noteTweenAlpha('player1', 5, 0, 0.5)
noteTweenAlpha('player2', 6, 0, 0.5)
noteTweenAlpha('player3', 7, 0, 0.5)
end
   if value1 == '18' then --1775 step
noteTweenX('op0', 4, 715, 0.1)
noteTweenX('op1', 5, 825, 0.1)
noteTweenX('op2', 6, 935, 0.1)
noteTweenX('op3', 7, 1045, 0.1)

noteTweenX('play0', 0, 115, 0.1)
noteTweenX('play1', 1, 225, 0.1)
noteTweenX('play2', 2, 335, 0.1)
noteTweenX('play3', 3, 445, 0.1)

noteTweenY('playY0', 0, 50, 0.1)
noteTweenY('playY1', 1, 50, 0.1)
noteTweenY('playY2', 2, 50, 0.1)
noteTweenY('playY3', 3, 50, 0.1)

noteTweenY('opY0', 4, 550, 0.1)
noteTweenY('opY1', 5, 550, 0.1)
noteTweenY('opY2', 6, 550, 0.1)
noteTweenY('opY3', 7, 550, 0.1)

for i = 0, getProperty('playerStrums.length')-1 do
setPropertyFromGroup('playerStrums',i,'downScroll',true)
end

for i = 0, getProperty('opponentStrums.length')-1 do
setPropertyFromGroup('opponentStrums',i,'downScroll',false)
end
end
   if value1 == '19' then --1778 step
noteTweenAlpha('op0', 0, 1, 0.5)
noteTweenAlpha('op1', 1, 1, 0.5)
noteTweenAlpha('op2', 2, 1, 0.5)
noteTweenAlpha('op3', 3, 1, 0.5)

noteTweenAlpha('player0', 4, 1, 0.5)
noteTweenAlpha('player1', 5, 1, 0.5)
noteTweenAlpha('player2', 6, 1, 0.5)
noteTweenAlpha('player3', 7, 1, 0.5)
end
   if value1 == '20' then --1868 step
noteTweenY('playY0', 4, 50, 0.2,'elasticInOut')
noteTweenY('playY1', 5, 50, 0.2,'elasticInOut')
noteTweenY('playY2', 6, 50, 0.2,'elasticInOut')
noteTweenY('playY3', 7, 50, 0.2,'elasticInOut')

noteTweenY('opY0', 0, 550, 0.2,'elasticInOut')
noteTweenY('opY1', 1, 550, 0.2,'elasticInOut')
noteTweenY('opY2', 2, 550, 0.2,'elasticInOut')
noteTweenY('opY3', 3, 550, 0.2,'elasticInOut')
for i = 0, getProperty('playerStrums.length')-1 do
setPropertyFromGroup('playerStrums',i,'downScroll',false)
end

for i = 0, getProperty('opponentStrums.length')-1 do
setPropertyFromGroup('opponentStrums',i,'downScroll',true)
end
end
   if value1 == '21' then --2031 step
noteTweenX('play0', 4, 415, 0.3,'quadOut')
noteTweenX('play1', 5, 525, 0.3,'quadOut')
noteTweenX('play2', 6, 635, 0.3,'quadOut')
noteTweenX('play3', 7, 745, 0.3,'quadOut')

noteTweenX('op0', 0, 415, 0.3,'quadOut')
noteTweenX('op1', 1, 525, 0.3,'quadOut')
noteTweenX('op2', 2, 635, 0.3,'quadOut')
noteTweenX('op3', 3, 745, 0.3,'quadOut')

noteTweenAlpha('opa0', 0, 0.25, 0.3)
noteTweenAlpha('opa1', 1, 0.25, 0.3)
noteTweenAlpha('opa2', 2, 0.25, 0.3)
noteTweenAlpha('opa3', 3, 0.25, 0.3)
end
   if value1 == '22' then --2096 step
noteTweenX('play0', 4, 745, 0.2)
noteTweenX('play1', 5, 635, 0.2)
noteTweenX('play2', 6, 525, 0.2)
noteTweenX('play3', 7, 415, 0.2)

noteTweenX('op0', 0, 745, 0.2)
noteTweenX('op1', 1, 635, 0.2)
noteTweenX('op2', 2, 525, 0.2)
noteTweenX('op3', 3, 415, 0.2)
end
   if value1 == '23' then --2160 step
noteTweenX('op0', 4, 715, 0.3,'elasticInOut')
noteTweenX('op1', 5, 825, 0.3,'elasticInOut')
noteTweenX('op2', 6, 935, 0.3,'elasticInOut')
noteTweenX('op3', 7, 1045, 0.3,'elasticInOut')

noteTweenX('play0', 0, 115, 0.3,'elasticInOut')
noteTweenX('play1', 1, 225, 0.3,'elasticInOut')
noteTweenX('play2', 2, 335, 0.3,'elasticInOut')
noteTweenX('play3', 3, 445, 0.3,'elasticInOut')
end
   if value1 == '24' then --2311 step
noteTweenX('play0', 4, 1044, 0.1,'elasticInOut')
noteTweenX('play1', 5, 935, 0.1,'elasticInOut')
noteTweenX('play2', 6, 825, 0.1,'elasticInOut')
noteTweenX('play3', 7, 715, 0.1,'elasticInOut')
end
   if value1 == '25' then --2352 step
noteTweenX('play0', 4, 715, 0.1,'elasticInOut')
noteTweenX('play1', 5, 825, 0.1,'elasticInOut')
noteTweenX('play2', 6, 935, 0.1,'elasticInOut')
noteTweenX('play3', 7, 1045, 0.1,'elasticInOut')
end
   if value1 == '26' then --2353 step
noteTweenY('playY0', 4, 325, 0.1)
noteTweenY('playY1', 5, 325, 0.1)
noteTweenY('playY2', 6, 325, 0.1)
noteTweenY('playY3', 7, 325, 0.1)

noteTweenY('opY0', 0, 325, 0.1)
noteTweenY('opY1', 1, 325, 0.1)
noteTweenY('opY2', 2, 325, 0.1)
noteTweenY('opY3', 3, 325, 0.1)

for i = 0,1 do
setPropertyFromGroup('playerStrums',i,'downScroll',false)
end

for i = 2,3 do
setPropertyFromGroup('playerStrums',i,'downScroll',true)
end

for i = 0,1 do
setPropertyFromGroup('opponentStrums',i,'downScroll',false)
end

for i = 2,3 do
setPropertyFromGroup('opponentStrums',i,'downScroll',true)
end
end
   if value1 == '28' then --2425 step
noteTweenY('opY0', 0, 50, 0.2,'elasticInOut')
noteTweenY('opY1', 1, 50, 0.2,'elasticInOut')
noteTweenY('opY2', 2, 50, 0.2,'elasticInOut')
noteTweenY('opY3', 3, 50, 0.2,'elasticInOut')

noteTweenX('op0', 0, 415, 0.1,'elasticInOut')
noteTweenX('op1', 1, 525, 0.1,'elasticInOut')
noteTweenX('op2', 2, 635, 0.1,'elasticInOut')
noteTweenX('op3', 3, 745, 0.1,'elasticInOut')

noteTweenX('play0', 4, 10000, 0.1,'elasticInOut')
noteTweenX('play1', 5, 10000, 0.1,'elasticInOut')
noteTweenX('play2', 6, 10000, 0.1,'elasticInOut')
noteTweenX('play3', 7, 10000, 0.1,'elasticInOut')

noteTweenY('playY0', 4, 50, 0.2,'elasticInOut')
noteTweenY('playY1', 5, 50, 0.2,'elasticInOut')
noteTweenY('playY2', 6, 50, 0.2,'elasticInOut')
noteTweenY('playY3', 7, 50, 0.2,'elasticInOut')

for i = 0, getProperty('playerStrums.length')-1 do
setPropertyFromGroup('playerStrums',i,'downScroll',false)
end

for i = 0, getProperty('opponentStrums.length')-1 do
setPropertyFromGroup('opponentStrums',i,'downScroll',false)
end
end
   if value1 == '29' then --2447 step
noteTweenX('play0', 4, 415, 0.1,'elasticInOut')
noteTweenX('play1', 5, 525, 0.1,'elasticInOut')
noteTweenX('play2', 6, 635, 0.1,'elasticInOut')
noteTweenX('play3', 7, 745, 0.1,'elasticInOut')

noteTweenX('op0', 0, -10000, 0.1,'elasticInOut')
noteTweenX('op1', 1, -10000, 0.1,'elasticInOut')
noteTweenX('op2', 2, -10000, 0.1,'elasticInOut')
noteTweenX('op3', 3, -10000, 0.1,'elasticInOut')
end
   if value1 == '30' then --2464 step
noteTweenX('play0', 4, 715, 0.1,'elasticInOut')
noteTweenX('play1', 5, 825, 0.1,'elasticInOut')
noteTweenX('play2', 6, 935, 0.1,'elasticInOut')
noteTweenX('play3', 7, 1045, 0.1,'elasticInOut')

noteTweenX('op0', 0, 115, 0.1,'elasticInOut')
noteTweenX('op1', 1, 225, 0.1,'elasticInOut')
noteTweenX('op2', 2, 335, 0.1,'elasticInOut')
noteTweenX('op3', 3, 445, 0.1,'elasticInOut')
end
   if value1 == '31' then --2558 step
noteTweenY('play0', 4, 550, 0.2,'elasticInOut')
noteTweenY('play1', 5, 550, 0.2,'elasticInOut')
noteTweenY('play2', 6, 550, 0.2,'elasticInOut')
noteTweenY('play3', 7, 550, 0.2,'elasticInOut')
for i = 0, getProperty('playerStrums.length')-1 do
setPropertyFromGroup('playerStrums',i,'downScroll',true)
end
end
   if value1 == '32' then --2577 step
noteTweenY('play0', 4, 50, 0.2,'elasticInOut')
noteTweenY('play1', 5, 50, 0.2,'elasticInOut')
noteTweenY('play2', 6, 50, 0.2,'elasticInOut')
noteTweenY('play3', 7, 50, 0.2,'elasticInOut')
for i = 0, getProperty('playerStrums.length')-1 do
setPropertyFromGroup('playerStrums',i,'downScroll',false)
end
end
   if value1 == '33' then --2672 step
noteTweenX('play0', 4, 415, 0.2,'elasticInOut')
noteTweenX('play1', 5, 525, 0.2,'elasticInOut')
noteTweenX('play2', 6, 635, 0.2,'elasticInOut')
noteTweenX('play3', 7, 745, 0.2,'elasticInOut')

noteTweenX('op0', 0, 415, 0.2,'elasticInOut')
noteTweenX('op1', 1, 525, 0.2,'elasticInOut')
noteTweenX('op2', 2, 635, 0.2,'elasticInOut')
noteTweenX('op3', 3, 745, 0.2,'elasticInOut')

noteTweenAlpha('op0a', 0, 0, 0.2)
noteTweenAlpha('op1a', 1, 0, 0.2)
noteTweenAlpha('op2a', 2, 0, 0.2)
noteTweenAlpha('op3a', 3, 0, 0.2)
end
   if value1 == '34' then --2736 step
noteTweenY('play0', 4, 550, 1.4,'elasticInOut')
noteTweenY('play1', 5, 550, 1.1,'elasticInOut')
noteTweenY('play2', 6, 550, 1.3,'elasticInOut')
noteTweenY('play3', 7, 550, 1.2,'elasticInOut')
for i = 0, getProperty('playerStrums.length')-1 do
setPropertyFromGroup('playerStrums',i,'downScroll',true)
end
end
end
end


function onUpdatePost() --que
   if curStep > 1584 < 1600 then
   for i = 0, getProperty("notes.length")-1 do
      local noteData = getPropertyFromGroup("notes", i , "noteData")
      if getPropertyFromGroup("notes", i , "isSustainNote") then 
         setPropertyFromGroup("notes", i , "angle", getPropertyFromGroup("strumLineNotes", noteData, "direction") - 90)
         if getPropertyFromGroup("notes", i ,"prevNote") ~= nil then 
            setPropertyFromGroup("notes", i , "flipY", true)
         end
      else 
         setPropertyFromGroup("notes", i , "angle", getPropertyFromGroup("strumLineNotes", noteData, "angle"))
      end
   end
   end
end
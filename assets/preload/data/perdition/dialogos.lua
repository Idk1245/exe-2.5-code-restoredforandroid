function onCreate()

makeLuaText('subs', 'Letra', 1000, 160, 143)
setTextString('subs',  '')
setTextFont('subs', 'who asks satan.ttf')
setTextColor('FFFFFF', FFFFFF)
setTextSize('subs', 55);
addLuaText('subs')
setObjectCamera('subs', 'other');
setTextAlignment('subs', 'center')
		
makeLuaSprite('black', '', -450, 0)
makeGraphic('black', 1280, 720, '000000')
setObjectCamera('black', 'game');
scaleObject('black', 200, 150);
setProperty('black.alpha', 0)
addLuaSprite('black', true)
end

function onStepHit()
if curStep == 1700 then
doTweenAlpha('o', 'black', 1, 1, 'linear');
        
end

if curStep == 1715 then --lyrics
setTextString('subs',  'Eso')
end
if curStep == 1720 then --lyrics
setTextString('subs',  'Eso fue')
end
if curStep == 1725 then --lyrics
setTextString('subs',  'Eso fue muy')
end
if curStep == 1730 then --lyrics
setTextString('subs',  'Eso fue muy facil')
end
if curStep == 1747 then --lyrics
setTextString('subs',  'No me')
end
if curStep == 1755 then --lyrics
setTextString('subs',  'No me hagas')
end
if curStep == 1762 then --lyrics
setTextString('subs',  'No me hagas perder el')
end
if curStep == 1768 then --lyrics
setTextString('subs',  'TIEMPO')
setTextColor('subs', 'FF0000')
setTextSize('subs', 75);
end
if curStep == 1800 then --lyrics
setTextString('subs',  '')
end
if curStep == 2264 then --lyrics
setTextString('subs',  'SUFRIRAS')
setTextColor('subs', 'FF0000')
--setProperty('subs.y', 300)
setTextSize('subs', 225);
screenCenter('subs', 'y');
setTextAlignment('subs', 'center')
end

if curStep == 1777 then
doTweenAlpha('o', 'black', 0, 1, 'linear');
doTweenAlpha('e', 'subs', 0, 1, 'linear');
end
if curStep == 2255 then
doTweenAlpha('o', 'black', 1, 1, 'linear');   
end
if curStep == 2270 then
doTweenAlpha('e', 'subs', 1, 1, 'linear');       
end
if curStep == 2280 then
doTweenAlpha('o', 'black', 0, 0.5, 'linear');
doTweenAlpha('e', 'subs', 0, 0.5, 'linear');       
end
end


function onCreate()
setProperty('skipCountdown', false);
end
function onCountdownTick(counter)
    if counter == 0 then
        playSound('intro3', 1)
        doTweenX('circlemove', 'circle', 0, 1, 'linear')
        doTweenX('textmove', 'text', 0, 1, 'linear')
    end
    if counter == 1 then
        setProperty('countdownReady.x', -5000);
        playSound('intro2', 1)
    end
    if counter == 2 then
        setProperty('countdownSet.x', -5000);
        playSound('intro1', 1)
    end
    if counter == 3 then
        setProperty('countdownGo.x', -5000);
        playSound('introGo', 1)
    end
end

function onTweenCompleted(tag)
    if tag == 'circlemove' then
        runTimer('wait', 0.5, 1)
    end
end

function onTimerCompleted(tag)
	if tag == 'wait' then
        doTweenAlpha('circlealpha', 'circle', 0, 1, 'linear')
        doTweenAlpha('textalpha', 'text', 0, 1, 'linear')
        doTweenAlpha('blackalpha', 'black', 0, 1, 'linear')
    runTimer('chau', 1, 1)
end
if tag == 'chau' then
removeLuaSprite('circle',true)
removeLuaSprite('text',true)
removeLuaSprite('black',true)
end
end
function onCreate()
		makeLuaSprite('creditbox', 'trash/box', 438, -720);
		setObjectCamera('creditbox', 'other');
		addLuaSprite('creditbox', false);
		
makeLuaText('credit', "RECREACION MarioMaster", 300, 490, -720); 
		setTextSize('credit', 40);
		setTextFont('credit', 'sonic-hud-font.ttf')
		setObjectCamera('credit', 'other');
		addLuaText('credit', false);
end
	
function onStepHit()
if curStep == 10 then
		doTweenY("creditbox", "creditbox", 0, 0.4, "linear")	
		doTweenY("credit", "credit", 340, 0.45, "linear")	
	end
	if curStep == 35 then
		doTweenY("creditbox", "creditbox", -720, 0.3, "linear")	
		doTweenY("credit", "credit", -720, 0.3, "linear")
	end
end
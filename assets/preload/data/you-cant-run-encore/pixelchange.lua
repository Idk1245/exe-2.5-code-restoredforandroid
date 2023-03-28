function onCreate() -- this script is for the pixel change
	-- please, do not touch anything in here.

	makeAnimatedLuaSprite('bg1', 'Stages/run/bg1', -1000, -700)
	scaleObject('bg1', 8, 8)
	setLuaSpriteScrollFactor('bg1', 0.9, 0.9);
	addAnimationByPrefix('bg1', 'bg1', 'bg1', 10, true)
	objectPlayAnimation('bg1', 'bg1', true)

	makeAnimatedLuaSprite('bg2', 'Stages/run/bg2', -1000, -700)
	scaleObject('bg2', 8, 8)
	setLuaSpriteScrollFactor('bg2', 0.7, 0.7);
	addAnimationByPrefix('bg2', 'bg2', 'bg2', 10, true)
	objectPlayAnimation('bg2', 'bg2', true)

	makeLuaSprite('bg3', 'Stages/run/bg3', -1000, -700)
	scaleObject('bg3', 8, 8)
	setLuaSpriteScrollFactor('bg3', 0.5, 0.5);

	makeLuaSprite('bg4', 'Stages/run/bg4', -1000, -700)
	scaleObject('bg4', 8, 8)
	setLuaSpriteScrollFactor('bg4', 0.3, 0.3);

	makeLuaSprite('bg5', 'Stages/run/bg5', -1000, -700)
	scaleObject('bg5', 8, 8)
	setLuaSpriteScrollFactor('bg5', 0.2, 0.2);

	makeAnimatedLuaSprite('objects', 'Stages/run/objects', -1000, -700)
	scaleObject('objects', 8, 8);
	addAnimationByPrefix('objects', 'objects', 'objects', 22, true)
	objectPlayAnimation('objects', 'objects', true)
	
	makeLuaSprite('GHGround', 'Stages/run/GHGround', -1000, -700)
	scaleObject('GHGround', 8, 8)

	makeAnimatedLuaSprite('flowers', 'Stages/run/flowers', -1000, -700)
	scaleObject('flowers', 8, 8);
	addAnimationByPrefix('flowers', 'flowerloop', 'flowerloop', 10, true)
	objectPlayAnimation('flowers', 'flowerloop', true)

	makeLuaSprite('black_vignette', 'black_vignette', 0, 0)
    setObjectCamera('black_vignette', 'other')
    --addLuaSprite('black_vignette', true)
	
	--addLuaSprite('bg1', false)
	setProperty('bg1.antialiasing',false)
	--addLuaSprite('bg2', false)
	setProperty('bg2.antialiasing',false)
	--addLuaSprite('bg3', false)
	setProperty('bg3.antialiasing',false)
 --	addLuaSprite('bg5', false)
	setProperty('bg5.antialiasing',false)
	--addLuaSprite('bg4', false)
	setProperty('bg4.antialiasing',false)
 --	addLuaSprite('objects', false)
	setProperty('objects.antialiasing',false)
 --	addLuaSprite('GHGround', false)
	setProperty('GHGround.antialiasing',false)
	--addLuaSprite('flowers', false)
	setProperty('flowers.antialiasing',false)
end

function onUpdate(elapsed)
    --Change To Pixel
	if curStep == 528 then
		removeLuaSprite('RunSky',true) -- 'true' means, that the sprite will be destroyed and no longer used after the pixel change
		removeLuaSprite('RunBG',true)
		removeLuaSprite('RunTrees',true)
	    removeLuaSprite('RunGround',true)
	    removeLuaSprite('RunTreesFront',true)
		removeLuaSprite('RunTopOverlay',true)
		addLuaSprite('black_vignette', true)
		addLuaSprite('bg1',false)
		addLuaSprite('bg2',false)
		addLuaSprite('bg3',false)
		addLuaSprite('bg5', false)
		addLuaSprite('bg4', false)
		addLuaSprite('objects',false)
		addLuaSprite('GHGround',false)
		addLuaSprite('flowers',false)

	    for i=0,4,1 do
		    setPropertyFromGroup('opponentStrums', i, 'texture', 'PIXEL_NOTE_assets');
		    setPropertyFromGroup('playerStrums', i, 'texture', 'PIXEL_NOTE_assets');
	    end
	end

	if curStep == 496 then 
        for i = 0, getProperty('unspawnNotes.length')-1 do
		    if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Pixel Note' then
			    setPropertyFromGroup('unspawnNotes', i, 'texture', 'PIXEL_NOTE_assets');
			else
		        setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets');
			end
        end
	end
	
	if curStep == 784 then
		removeLuaSprite('bg1',true)
		removeLuaSprite('bg2',true)
		removeLuaSprite('bg3',true)
		removeLuaSprite('bg5',true)
		removeLuaSprite('bg4',true)
		removeLuaSprite('objects',true)
	    removeLuaSprite('GHGround',true)
		removeLuaSprite('flowers',true)
		removeLuaSprite('black_vignette', true)
		addLuaSprite('ScrapBrain',false)

	    for i=0,4,1 do
		    setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTE_assets');
		    setPropertyFromGroup('playerStrums', i, 'texture', 'NOTE_assets');
	    end
	end

	if curStep == 752 then
	    for i = 0, getProperty('unspawnNotes.length')-1 do
		    if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'StaticNote' then
			    setPropertyFromGroup('unspawnNotes', i, 'texture', 'Static/StaticNOTE_assets');
			else
		        setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets');
			end
        end
	end

	if curStep == 947 then
		for i = 0, getProperty('unspawnNotes.length')-1 do
		    if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'PhantomNote' then
			    setPropertyFromGroup('unspawnNotes', i, 'texture', 'PhantomNote');
			else
		        setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets');
			end
        end
	end
end
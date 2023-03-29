function onCreate() -- Stage by denumu07


    precacheImage('Stages/run/run/Sky')
    precacheImage('Stages/run/GrassBack')
    precacheImage('Stages/run/trees')
    precacheImage('Stages/run/TreesFront')
    precacheImage('Stages/run/TopOverlay')
    precacheImage('PIXEL_NOTE_assets')
    precacheImage('Stages/run/bg1')
    precacheImage('Stages/run/bg2')
    precacheImage('Stages/run/bg3')
    precacheImage('Stages/run/bg4')
    precacheImage('Stages/run/bg5')
    precacheImage('Stages/run/objects')
    precacheImage('Stages/run/GHGround')
    precacheImage('Stages/runflowers')
    precacheImage('black_vignette')
    precacheImage('NOTE_assets')
    precacheImage('Static/StaticNOTE_assets')
    precacheImage('PhantomNote')
  --addLuaScript('scripts/ycr/pixelchange') -- haaha, doesnt work

    addCharacterToList('ycr-mad', 'dad') 
    addCharacterToList('bfpixelencore', 'boyfriend')
    addCharacterToList('PIXELLLLLLLL', 'dad')
    addCharacterToList('gf_empty', 'gf')
    addCharacterToList('bf-encore', 'boyfriend')
    addCharacterToList('Main2GFycr', 'gf')
    addCharacterToList('Main2GFycr2', 'gf')
    addCharacterToList('bf-encore', 'boyfriend')
    addCharacterToList('ycr-mad', 'dad')
    
    ----------------------------------------------

    makeLuaSprite('ScrapBrain', 'Stages/run/shitabouttogetreal', -600,-500) --since i am a lazy person, instead of using new x,y positions, im just gonna use the one from runsky lol
    setScrollFactor('ScrapBrain', 1, 1)
    --addLuaSprite('ScrapBrain', false) not adding the sprite now, cuz it'll be used after the pixel section

    makeLuaSprite('RunSky','Stages/run/sky',-600,-500)
    setScrollFactor('RunSky', 0.9, 0.9)
    addLuaSprite('RunSky',false)

    makeLuaSprite('RunBG','Stages/run/GrassBack',-600,-500)
    setScrollFactor('RunBG',0.9,0.9)
    addLuaSprite('RunBG',false)

    makeLuaSprite('RunTrees','Stages/run/trees',-600,-500)
    setScrollFactor('RunTrees',1.1,1)
    addLuaSprite('RunTrees',false)


    makeLuaSprite('RunTreesFront','Stages/run/TreesFront',-600,-500)
    setScrollFactor('RunTreesFront',1.2,1)
    addLuaSprite('RunTreesFront',true)

    makeLuaSprite('RunGround','Stages/run/Grass',-600,-500)
    setScrollFactor('RunGround', 1, 1)
    addLuaSprite('RunGround',false)


    makeLuaSprite('RunTopOverlay','Stages/run/TopOverlay',-600,-500)
    SetScrollFactor('RunTopOverlay', 1, 1)
    addLuaSprite('RunTopOverlay',true)
end

function onStepHit() -- btw, if you're looking for the pixel swtich, go in "data/you-cant-run-encore" and open 'pixelchange.lua'
	  
	if curStep == 528 then
        triggerEvent('Change Character', '1', 'PIXELLLLLLLL')
        triggerEvent('Change Character', 'BF', 'bfpixelencore')
        triggerEvent('Change Character', '2', 'gf_empty')
		for strums = 0,4 do
		    setPropertyFromGroup('playerStrums', strums,'x',92 + (112 * strums))
		    setPropertyFromGroup('opponentStrums', strums,'x',732 + (112 * strums))
	    end
	end
	
	if curStep == 784 then
        triggerEvent('Change Character', '1', 'ycr-mad')
        triggerEvent('Change Character', 'BF', 'bf-encore')
        triggerEvent('Change Character', '2', 'gf')
	    for strums = 0,4 do
		    setPropertyFromGroup('playerStrums', strums,'x',732 + (112 * strums))
		    setPropertyFromGroup('opponentStrums', strums,'x',92 + (112 * strums))
	   end
	end
end
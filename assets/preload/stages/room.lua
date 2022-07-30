-- *Camera Movements*
local alpha = true
-- *Dad/Mom Animations*
local idlewhenappear = 4
local idlewhenappear2 = 4

local SpecialAnimation = false
local SpecialAnimation2 = false
local SpecialAnimation3 = false

local hearts = false
local notesappear = true

holdTimersOne = {wdad = -1.0};
noteDatas = {wdad = 0};

holdTimersTwo = {mom = -1.0};
noteDatas2 = {mom = 0};
local onebeat = false;
local secondbeat = false;
-- *Test*
--local animFunc = require "animFunc"
--local window = require "window"


function onCreate()  

    addCharacterToList('wdad', dad)
    addCharacterToList('death')
    addCharacterToList('test_gf-angry', dad)
    addCharacterToList('end', dad)
    addCharacterToList('fuckyou', dad)
    addCharacterToList('bf-alt2', bf)
    addCharacterToList('bf-alt1', bf)
    addCharacterToList('bf-alt3', bf)

    precacheImage('icons/dadbf-icons')
    precacheImage('icons/dad-icons')
    precacheImage('icons/gfbf-icons')
    

    makeAnimationList();
	makeOffsets();
	
    makeLuaSprite('RoomBG', 'owo/RoomBG', -500, -300)    
    setScrollFactor('RoomBG', 1.2, 1.2);
    addLuaSprite('RoomBG', false)

   
	makeAnimatedLuaSprite('wdad', 'characters/DAD_ASSETS', defaultOpponentX - 105, defaultOpponentY + 160);
	addAnimationByPrefix('wdad', 'idle', 'Dad_Idle', 24, false);
	addAnimationByPrefix('wdad', 'singLEFT', 'Dad_Left', 24, false);
	addAnimationByPrefix('wdad', 'singDOWN', 'Dad_Down', 24, false);
	addAnimationByPrefix('wdad', 'singUP', 'Dad_Up', 24, false);
	addAnimationByPrefix('wdad', 'singRIGHT', 'Dad_Right', 24, false);
	addAnimationByPrefix('wdad', 'Appear', 'DadAppear', 24, false);
    addAnimationByPrefix('wdad', 'Angry', 'Dad_Angry', 24, false);
    setProperty('wdad.alpha', 0);
	addLuaSprite('wdad', false);
	playAnimation('wdad', idlewhenappear, true);

	makeAnimatedLuaSprite('mom', 'characters/MOM_ASSETS', defaultOpponentX + 960, defaultOpponentY + 50);
	addAnimationByPrefix('mom', 'idle', 'Idle', 24, false);
	addAnimationByPrefix('mom', 'singLEFT', 'Left', 24, false);
	addAnimationByPrefix('mom', 'singDOWN', 'Down', 24, false);
	addAnimationByPrefix('mom', 'singUP', 'Up', 24, false);
	addAnimationByPrefix('mom', 'singRIGHT', 'Right', 24, false);
	addAnimationByPrefix('mom', 'Appear', 'Open', 24, false);
    setProperty('mom.alpha', 0);
    --scaleObject('mom', 0.8, 0.9);
	addLuaSprite('mom', false);
	playAnimation('mom', idlewhenappear2, true);

   
    makeAnimatedLuaSprite('Screen2', 'owo/Screen2', 400, 300);
	addAnimationByPrefix('Screen2', 'idle', 'Screen2', 24, false)
	addLuaSprite('Screen2', false);

    makeLuaSprite('room', 'owo/roombg2', -1603, -1841)    
    scaleObject('room', 1.1, 1.1);
    addLuaSprite('room', false)
    
    makeAnimatedLuaSprite('boom1', 'owo/boom1', 1100, 220);
	addAnimationByPrefix('boom1', 'idle', 'Boom1', 24, false)
	addLuaSprite('boom1', false);

    makeAnimatedLuaSprite('Screen2', 'owo/Screen2', 360, 290);  
    addAnimationByPrefix('Screen2', 'idle', 'Screen_Export', 24, false)
    scaleObject('Screen2', 1.0, 1.0);
    addLuaSprite('Screen2', false) 

    makeLuaSprite('light3', 'owo/light3', 1000, -100)    
    addLuaSprite('light3', false) 

    makeLuaSprite('room2', 'owo/bruh', -690, -430)    
    scaleObject('room2', 1.1, 1.1);
    addLuaSprite('room2', false)

    makeAnimatedLuaSprite('boom2', 'owo/boom2', -230, 545);
    addAnimationByPrefix('boom2', 'idle', 'Boom2', 24, false)
    scaleObject('boom2', 1.1, 1.1);
    addLuaSprite('boom2', false);

    makeLuaSprite('ScreenExport', 'owo/ScreenExport', 410, 120)    
    scaleObject('ScreenExport', 1.1, 1.1);
    addLuaSprite('ScreenExport', false)

    makeAnimatedLuaSprite('WindowOne', 'owo/WindowOne', -120, 340);
    addAnimationByIndices('WindowOne', 'close', 'WindowOne_Move', '14, 13, 11, 10, 8, 7, 5, 4, 2, 1, 0' , 24)
	addAnimationByPrefix('WindowOne', 'idle', 'WindowOne_Move', 24, false)
    addAnimationByPrefix('WindowOne', 'Stat', 'WindowOne_Static', 24, false)
    objectPlayAnimation('WindowOne', 'Stat', true)
    addLuaSprite('WindowOne', true) 

    makeAnimatedLuaSprite('WindowTwo', 'owo/WindowTwo', 1120, 0);
    addAnimationByIndices('WindowTwo', 'close', 'WindowTwo_Move', '14, 13, 11, 10,8, 7, 5, 4, 2, 1, 0' , 24)
	addAnimationByPrefix('WindowTwo', 'idle', 'WindowTwo_Move', 24, false)
    addAnimationByIndices('WindowTwo', 'Stat', 'WindowTwo_Move', 0, 24)
    objectPlayAnimation('WindowTwo', 'Stat', true)
    addLuaSprite('WindowTwo', false) 
    


    makeAnimatedLuaSprite('store1', 'owo/store1', 1000, 20);
    addAnimationByPrefix('store1', 'idle', 'Store1', 24, false)
    addAnimationByIndices('store1', 'static', 'Store1', 0, 24)
    addLuaSprite('store1', false) 
    objectPlayAnimation('store1', 'static', false)

    makeAnimatedLuaSprite('store2', 'owo/store2', -360, 100);
	addAnimationByPrefix('store2', 'idle', 'Store2', 24, false)
    addLuaSprite('store2', true) 


    makeLuaSprite('black', 'owo/black', 0, 0)  
    setProperty('black.alpha', 0.74); 
    addLuaSprite('black', true) 
    
    setObjectCamera('black', 'hud')
    setObjectCamera('black', 'camOther');


    makeLuaSprite('pink', 'owo/pink', 0, 0)    
    addLuaSprite('pink', true) 
    setProperty('pink.alpha', 0);
    setObjectCamera('pink', 'camOther');
    

    makeLuaSprite('image', 'owo/image', -460, -35)    
    addLuaSprite('image', true) 
    setProperty('image.alpha', 0);



    makeLuaSprite('light2', 'owo/light2', -100, 50)    
    addLuaSprite('light2', true) 



    makeLuaSprite('shelf', 'owo/shelf', 1660, -160)    
    addLuaSprite('shelf', true) 
    setScrollFactor('shelf', 1.25, 1.2);

    makeLuaSprite('light', 'owo/light1', 290, -1050)    
    addLuaSprite('light', true) 


    makeAnimatedLuaSprite('fheart1', 'owo/heart1', 580, 890);
	addAnimationByPrefix('fheart1', 'idle', 'Hears', 24, false)
    addAnimationByPrefix('fheart1', 'amogus', 'Hears', 24, false)
    
    addLuaSprite('fheart1', true) 
    scaleObject('fheart1', -0.7, 0.7);
    setObjectCamera('fheart1', 'camOther');

    makeAnimatedLuaSprite('heart2', 'owo/heart1', 710, -180);
	addAnimationByPrefix('heart2', 'idle', 'Hears', 24, false)
    addLuaSprite('heart2', true) 
    scaleObject('heart2', -0.7, 0.7);
    setObjectCamera('heart2', 'camOther');
    
    makeAnimatedLuaSprite('heart3', 'owo/heart2', 900, 290);
	addAnimationByPrefix('heart3', 'idle', 'heart2', 24, false)
    addLuaSprite('heart3', true) 
    scaleObject('heart3', -0.7, 0.7);
    setObjectCamera('heart3', 'camOther');

    makeAnimatedLuaSprite('heart4', 'owo/heart1', -140, 490);
	addAnimationByPrefix('heart4', 'idle', 'Hears', 24, false)
    addLuaSprite('heart4', true) 
    scaleObject('heart4', 0.7, 0.7);
    setObjectCamera('heart4', 'camOther');

    makeAnimatedLuaSprite('heart5', 'owo/heart1', -220, -280);
	addAnimationByPrefix('heart5', 'idle', 'Hears', 24, false)
    addLuaSprite('heart5', true) 
    scaleObject('heart5', 0.7, 0.7);
    setObjectCamera('heart5', 'camOther');
    
    makeAnimatedLuaSprite('heart6', 'owo/heart2', -130, 170);
	addAnimationByPrefix('heart6', 'idle', 'heart2', 24, false)
    addLuaSprite('heart6', true) 
    scaleObject('heart6', 0.7, 0.7);
    setObjectCamera('heart6', 'camOther');


    for i = 0,6 do
        setProperty('heart' .. i .. '.alpha', 0);
    end

    
    setProperty('camZooming', false)
end 


animationsList = {}
animationsList2 = {}

function makeAnimationList()
	animationsList[0] = 'singLEFT';
	animationsList[1] = 'singDOWN';
	animationsList[2] = 'singUP';
	animationsList[3] = 'singRIGHT';
    animationsList[4] = 'idle';
	animationsList[5] = 'Appear';
	animationsList[6] = 'Angry';


	animationsList2[0] = 'singLEFT';
	animationsList2[1] = 'singDOWN';
	animationsList2[2] = 'singUP';
	animationsList2[3] = 'singRIGHT';
    animationsList2[4] = 'idle';
	animationsList2[5] = 'Appear';
end

offsetswindowdad = {};
offsetsmom = {};

function makeOffsets()
    offsetswindowdad[0] = {x = 34, y = 4}; --left
    offsetswindowdad[1] = {x = -21, y = -14}; --down
	offsetswindowdad[2] = {x = 13, y = 20}; --up
	offsetswindowdad[3] = {x = -34, y = -7}; --right
    offsetswindowdad[4] = {x = 0, y = 0}; --idle
	offsetswindowdad[5] = {x = 99, y = 7}; --Appear
	offsetswindowdad[6] = {x = -4, y = 14}; --Angry
   
	offsetsmom[0] = {x = -55, y = 20}; --left
	offsetsmom[1] = {x = -118, y = 1}; --down
	offsetsmom[2] = {x = -89, y = 59}; --up
	offsetsmom[3] = {x = -8, y = 8}; --right
    offsetsmom[4] = {x = 0, y = 0}; --idle
	offsetsmom[5] = {x = 284, y = 35}; --appear
end

function playAnimation(character, animId, forced)

	animName = animationsList[animId];
	--debugPrint(animName);
	if character == 'wdad' then
		objectPlayAnimation('wdad', animName, true); -- this part is easily broke if you use objectPlayAnim (I have no idea why its like this)
		setProperty('wdad.offset.x', offsetswindowdad[animId].x);
		setProperty('wdad.offset.y', offsetswindowdad[animId].y);
	end

    if character == 'mom' then
		objectPlayAnimation('mom', animName, true); -- this part is easily broke if you use objectPlayAnim (I have no idea why its like this)
		setProperty('mom.offset.x', offsetsmom[animId].x);
		setProperty('mom.offset.y', offsetsmom[animId].y);
	end
end


function opponentNoteHit(id, direction, noteType, isSustainNote)
    
	if noteType == 'Dad_Sing' or noteType == 'kDAD SING INVISIBLE' then
		if not isSustainNote then
			noteDatas.wdad = direction;
		end	
		characterToPlay = 'wdad'
		animToPlay = noteDatas.wdad;
		holdTimersOne.wdad = 0;
        SpecialAnimation = true;
      
		playAnimation(characterToPlay, animToPlay, true);
	end

    if noteType == 'Mom_Sing' or noteType == 'nMOM SING INVISIBLE'  then
		if not isSustainNote then
			noteDatas2.mom = direction;
		end	
		characterToPlay2 = 'mom'
		animToPlay2 = noteDatas2.mom;
		holdTimersTwo.mom = 0;
        SpecialAnimation2 = true;
		playAnimation(characterToPlay2, animToPlay2, true);
	end
end

function onUpdate(elapsed)
--setProperty('cpuControlled', true); 

 
   
    if (curStep > 1595 and curStep < 1722 or curStep >= 1979 and curStep <= 2235 or curStep >= 2619 and curStep <= 3169) then
        cameraShake('camGAME',0.004,0.02);
        secondbeat = true;
    else
        secondbeat = false;
    end
    
    if curStep == 1 then 
        --setProperty('songSpeed', 2.1);--2.8
 
       
        

        doTweenZoom('camz','camGame',0.90,20,'sineInOut')
       --setProperty('camHUD.alpha', 0)
        if (notesappear) then 
            for i = 0,7 do
                if not downscroll then 
                    noteTweenY('strumLineNotes' .. i, i, 50+40, 0.1, 'sineInOut')
                else
                    noteTweenY('strumLineNotes' .. i, i, 570-40, 0.1, 'sineInOut')
                end
               
            end
            runTimer('alphaSHIT', 11) -- 11
            runTimer('alphaSHIT2', 18) -- 18
        end
     
    end

    if curStep == 3145 then --3145 
        triggerEvent('Change Character', 'dad', "end")
        triggerEvent('Play Animation', 'play', "dad")
        setScrollFactor('dad', 1, 1);
        setScrollFactor('gf', 1, 1);
        setProperty('gf.alpha',0)
        setProperty('dad.x',542)
        setProperty('dad.y',272)
        setScrollFactor('dad',1,1)
        
        makeAnimatedLuaSprite('shiek', 'owo/shiek', 875, 435);
        addAnimationByPrefix('shiek', 'idle', 'shiek', 24, false)
        addLuaSprite('shiek', true) 

        objectPlayAnimation('shiek', 'idle', true)

        --objectPlayAnimation('WindowOne', 'idle', true) 
       -- setProperty('WindowOne.y', 105);


        --objectPlayAnimation('WindowTwo', 'idle', true)
        
        runTimer('close', 1.5) 
        runTimer('closedad', 2.0) 
       
    end

    if curStep == 3161 then 
        cancelTween('camz')
        doTweenZoom('camz','camGame',0.95,0.5,'cubeInOut')
        cancelTween('camz2')
        doTweenZoom('camz2','camHUD',4,0.8,'cubeInOut')
        setProperty('camZooming', false)
        MOM_Sing = false;
        WDAD_Sing = false;
        middle = true;
    end

    if curStep == 3166 then 
        doTweenZoom('camz','camGame',0.90,4,'expoOut')
    end

    if curStep == 3173 then 
        cameraFade('camGame', '000000',0.05)
    end

    if curStep == 1182 then --1182
        triggerEvent('Change Character', 'dad', "test_gf-angry")
        setScrollFactor('dad', 1, 1);
        setScrollFactor('gf', 1, 1);
        setProperty('gf.alpha',0)
        setProperty('dad.x',640)
        setProperty('dad.y',280)
        setScrollFactor('dad',1,1)

        triggerEvent('Change Character', 'bf', "bf-alt2")

    end

    if curStep == 2235 then --
        triggerEvent('Change Character', 'dad', "fuckyou")
        setScrollFactor('dad', 1, 1);
        setScrollFactor('gf', 1, 1);
        setProperty('gf.alpha',0)
        setProperty('dad.x',640)
        setProperty('dad.y',280)
        setScrollFactor('dad',1,1)
        doTweenZoom('camz','camGame',0.95,0.4,'quintInOut')
    end

    if curStep == 2249 then 
        doTweenZoom('camz','camGame',0.75,0.4,'quintInOut')
    end

    if curStep == 2267 then 
        doTweenZoom('camz','camGame',0.95,0.4,'quintInOut')
    end

    if curStep == 2281 then 
        doTweenZoom('camz','camGame',0.85,0.4,'quintInOut')
    end

    if curStep == 2875 then 
        doTweenZoom('camz','camGame',0.85,0.4,'quintInOut')
    end

    if curStep == 2999 then 
        doTweenZoom('camz','camGame',0.75,7,'quintInOut')
    end

    if curStep == 2255 then --1182
        triggerEvent('Change Character', 'dad', "icon1")
        setScrollFactor('dad', 1, 1);
        setScrollFactor('gf', 1, 1);
        setProperty('gf.alpha',0)
        setProperty('dad.x',640)
        setProperty('dad.y',280)
        setScrollFactor('dad',1,1)


    end

    if curStep == 126 then 
       
        doTweenZoom('camz','camGame',0.65,0.4,'sineInOut')
    end

    if curStep == 135 then 
        setProperty('camZooming', true)
    end

    


    if alpha == true then
        for i = 0,7 do
            setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
        end
    end

    if curStep == 3578 then 
        for i = 0,4 do
            --setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
            noteTweenAlpha('strmLineNotes2' .. i, i+3, 1, 1, 'sineInOut')
            noteTweenY('strumLineNotes2' .. i, i+3, 50, 1, 'sineInOut')
        end

    end

    --



    
    if curStep == 383 then -- Hearts HUD + Zoom | TIME : 0:41 |  cute moment -- 768
        doTweenZoom('camz','camGame',0.75,1,'sineInOut')
        doTweenAlpha('pink','pink', 0.8, 0.5,'quadInOut');
        hearts = true;
        for i = 0,6 do
            cancelTween('heart' .. i)
            objectPlayAnimation('heart' .. i, 'idle', true)
        end
    end   

    if curStep == 512 then -- Slow zoom out | TIME : 0:52 | idk done
        doTweenZoom('camz','camGame',0.65,7,'sineInOut')
        doTweenAlpha('pink','pink', 0, 5,'quadInOut');
        hearts = false; 
    end

    if curStep == 767 then -- Zoom in | 1:21 | cute moment
        doTweenZoom('camz','camGame',0.70,0.7,'sineInOut')
        hearts = true;
        doTweenAlpha('pink','pink', 0.8, 0.5,'quadInOut');
        for i = 0,6 do
            cancelTween('heart' .. i)
            objectPlayAnimation('heart' .. i, 'idle', true)
        end
    end

    if curStep == 895 then  -- zoom in | 1:37 |  
        doTweenZoom('camz','camGame',0.80,6,'sineInOut')
        hearts = false;
        doTweenAlpha('pink','pink', 0, 4,'quadInOut');
    end

    if curStep == 1023 then --HEARTS zoom 1:50
       doTweenZoom('camz','camGame',0.88,7,'sineInOut')
       hearts = true;
       doTweenAlpha('pink','pink', 0.8, 0.5,'quadInOut');
       for i = 0,6 do
           cancelTween('heart' .. i)
           objectPlayAnimation('heart' .. i, 'idle', true)
       end
    end




    if curStep == 1152 then 
        hearts = false;
        doTweenAlpha('pink','pink', 0, 0.5,'quadInOut');
        doTweenAlpha('camHUD','camHUD', 0, 0.5,'quadInOut');
        doTweenAlpha('animatedicon2','animatedicon2', 0, 0.5,'quadInOut');
        doTweenAlpha('animatedicon','animatedicon', 0, 0.5,'quadInOut');
        doTweenZoom('camz','camGame',0.75,3,'expoOut') -- zoom on dad
    end

    if curStep == 1163 then 
        doTweenZoom('camz','camGame',0.55,2,'expoOut') -- zoom on dad
    end

    if curStep == 1164 then 
        doTweenZoom('camz','camGame',0.90,0.3,'circInOut') -- zoom on dad
    end

    if curStep == 1166 then -- shienk
        cameraFlash('camGAME','F6C4F3',0.2,false);
        cameraShake('camGAME',0.03,0.03);

        --noteTweenAlpha('noteAppear'..i, i, 1, 2, 'linear');

        doTweenAlpha('camHUD','camHUD', 1, 0.01,'quadInOut');
        doTweenAlpha('animatedicon2','animatedicon2', 1, 0.01,'quadInOut');
        doTweenAlpha('animatedicon','animatedicon', 1, 0.01,'quadInOut');
    end


    if curStep == 1155 then 
        idlewhenappear = 5;
        SpecialAnimation = true;
        playAnimation('wdad', 5, false);
        setProperty('wdad.alpha', 1);

       -- for i= 0, 3 do
        --    setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTE_dad') -- change 'playerStrums' to 'opponentStrums' for DD notes
        --end
       -- for b = 0, getProperty('unspawnNotes.length') - 1 do
        --    if not getPropertyFromGroup('unspawnNotes', b, 'mustPress') then -- change 'if' to 'if not' for DD notes
       --         setPropertyFromGroup('opponentStrums', b, 'texture', 'NOTE_dad')
        --    end
       -- end
       -- for i = 0, getProperty('unspawnNotes.length') - 1 do
       --     if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then -- same deal with b
       --         setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_dad');
        --    end
       -- end
    end

    if curStep == 1158 then 
        triggerEvent('Camera Follow Pos',oppxdad,oppydad);      
    end



    if curStep == 1184 then 
        doTweenZoom('camz','camGame',0.88,0.2,'expoOut')
    end

    if curStep == 1201 then 
        doTweenZoom('camz','camGame',0.90,0.2,'expoOut')
    end

    if curStep == 1217 then 
        doTweenZoom('camz','camGame',0.95,0.2,'expoOut')
    end

    if curStep == 1233 then 
        doTweenZoom('camz','camGame',1,1,'expoOut')
    end

--
    if curStep == 1241 then 
        doTweenZoom('camz','camGame',0.95,0.2,'expoOut')
    end

    if curStep == 1243 then 
        doTweenZoom('camz','camGame',1,0.2,'expoOut')
    end

    if curStep == 1245 then 
        doTweenZoom('camz','camGame',0.95,0.2,'expoOut')
    end

    if curStep == 1247 then 
        doTweenZoom('camz','camGame',0.80,0.2,'expoOut')
    end

    if curStep == 1249 then 
        doTweenZoom('camz','camGame',0.80,1,'circInOut') -- new
    end

    if curStep == 1265 then 
        doTweenZoom('camz','camGame',0.85,0.2,'expoOut')
    end

    if curStep == 1281 then 
        doTweenZoom('camz','camGame',0.90,0.2,'expoOut')
    end

    if curStep == 1297 then 
        doTweenZoom('camz','camGame',0.95,0.2,'expoOut')
    end

    if curStep == 1312 then 
        doTweenZoom('camz','camGame',1,1,'expoOut')
    end

    if curStep == 1310 then 
        SpecialAnimation = true;
        triggerEvent('Camera Follow Pos',oppxdad-150,oppydad); 
    end

    if curStep == 1325 then 
        playAnimation('wdad', 6, false);  
    end
    

    if curStep == 1338 then -- idk
        SpecialAnimation = false;   -- uh
    end



    

    if curStep == 2013 then 
        doTweenZoom('camz','camGame',0.85,3,'expoOut')
    end

    if curStep == 1326 then -- slow cool zoom 
        doTweenZoom('camz','camGame',1.4,4,'expoOut')
        doTweenAlpha('camHUD','camHUD', 0, 0.5,'quadInOut');
        doTweenAlpha('animatedicon2','animatedicon2', 0, 0.5,'quadInOut');
        doTweenAlpha('animatedicon','animatedicon', 0, 0.5,'quadInOut');
        
    end

    if curStep == 1337 then -- slow cool zoom 
        doTweenZoom('camz','camGame',0.80,1,'expoOut')
        doTweenAlpha('camHUD','camHUD', 1, 0.3,'quadInOut');
        doTweenAlpha('animatedicon2','animatedicon2', 1, 0.3,'quadInOut');
        doTweenAlpha('animatedicon','animatedicon', 1, 0.3,'quadInOut');
    end

   
    if curStep == 2210 then

        playAnimation('mom', 5, false);
        setProperty('mom.alpha', 1);
        SpecialAnimation2 = true;
    end

    if curStep == 2083 then  -- boyfriend change
        setProperty('boyfriend.y', 368)
    end

    if getProperty('wdad.animation.curAnim.curFrame') == 14 and getProperty('wdad.animation.curAnim.name') == 'Appear' then
        setProperty('WindowOne.y', 105);
        objectPlayAnimation('store2', 'idle', false)
        --setProperty('defaultCamZoom',0.85);
        objectPlayAnimation('WindowOne', 'idle', true)
        
    end


    if getProperty('mom.animation.curAnim.curFrame') == 37 and getProperty('mom.animation.curAnim.name') == 'Appear' then
        SpecialAnimation2 = false;
    end

    if getProperty('mom.animation.curAnim.curFrame') == 16 and getProperty('mom.animation.curAnim.name') == 'Appear' then
        --setProperty('WindowTwo.y', 105);

        objectPlayAnimation('store2', 'idle', false)
        --setProperty('defaultCamZoom',0.85);
        objectPlayAnimation('WindowTwo', 'idle', true)
        objectPlayAnimation('store1', 'idle', false)
    end

    if  getProperty('heart1.animation.curAnim.curFrame') == 11 or getProperty('heart2.animation.curAnim.curFrame') == 11 or getProperty('heart4.animation.curAnim.curFrame') == 11 or getProperty('heart5.animation.curAnim.curFrame') == 11 then
        for i = 0,6 do
            setProperty('heart' .. i .. '.alpha', 0);
        end
    end

    if getProperty('heart3.animation.curAnim.curFrame') == 6 or getProperty('heart6.animation.curAnim.curFrame') == 6 then
        setProperty('heart3.alpha', 0);
        setProperty('heart6.alpha', 0);
    end

    
    if getProperty('wdad.animation.curAnim.curFrame') == 40 and getProperty('wdad.animation.curAnim.name') == 'Appear' then
        idlewhenappear = 4;
       
        SpecialAnimation = false;
        playAnimation('wdad', idlewhenappear, true);
       -- setProperty('heart222.alpha', 1);

    end

    if curStep > 1300 and curStep < 1340 then
        SpecialAnimation3 = true;
        SpecialAnimation = true;
    else
        SpecialAnimation3 = false;
    end
   
    if getProperty('wdad.animation.curAnim.finished') and not SpecialAnimation3 then
        SpecialAnimation = false;
        playAnimation('wdad', 4, false);
    end

    
    if getProperty('mom.animation.curAnim.finished') then
        SpecialAnimation2 = false;
        playAnimation('mom', 4, false);
    end
end

function onCountdownTick(counter)
	beatHitDance(counter);
end

function onBeatHit()
	beatHitDance(curBeat);

    if (curBeat % 4) == 0 then
        

        for i = 0,6 do
            objectPlayAnimation('heart' .. i, 'idle', true)
        end


        if hearts then 
            for i = 0,6 do
                setProperty('heart' .. i .. '.alpha', 1);
            end
        end
        
        if getProperty('camZooming') and not secondbeat then
            objectPlayAnimation('Screen2', 'idle', false)
            objectPlayAnimation('boom2', 'idle', false)
            objectPlayAnimation('boom1', 'idle', false)
        end
        
       -- if curBeat % 4 == 0 and getProperty('camZooming') and not secondbeat then
         --  triggerEvent('Add Camera Zoom', 0.01, 0.01)

         --   if onebeat then 
        --        triggerEvent('Add Camera Zoom', 0.02, 0.02)
           -- end
        --end
    
       
	end
end

function beatHitDance(counter) 
	if counter % 2 == 0 and not SpecialAnimation and not SpecialAnimation3 then
			playAnimation('wdad', 4, false);
	end

    if counter % 2 == 0 and not SpecialAnimation2 then
			playAnimation('mom', 4, false);
	end
end


function onTweenCompleted(name)
    if name == 'camz' then
        setProperty("defaultCamZoom",getProperty('camGame.zoom')) 
    end  
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'alphaSHIT' then
        alpha = false
        for i = 0,3 do
            noteTweenAlpha('noteAppear'..i+4, i+4, 1, 2, 'linear')

            if not downscroll then 
                noteTweenY('strumLineNotesMOVE' .. i+4, i+4, 50, 2, 'sineInOut')
            else
                noteTweenY('strumLineNotesMOVE' .. i+4, i+4, 570, 2, 'sineInOut')
            end
            
        end
    end

    if tag == 'alphaSHIT2' then
        for i = 0,3 do
            if not downscroll then 
                noteTweenY('strumLineNotesMOVE' .. i, i, 50, 2, 'sineInOut')
            else
                noteTweenY('strumLineNotesMOVE' .. i, i, 570, 2, 'sineInOut')
            end

            noteTweenAlpha('noteAppear'..i, i, 1, 2, 'linear')
           
        end
    end

    if tag == 'close' then
        objectPlayAnimation('WindowOne', 'close')
        objectPlayAnimation('WindowTwo', 'close')

    end

    if tag == 'closedad' then
       
        doTweenY('wdad','wdad',1240,1,'expoOut')
        doTweenY('mom','mom',1240,1,'expoOut')
    end

end   

function onStepHit()
   

 if (curStep % 2) == 0 and secondbeat then 
    cancelTween('boom2');
    cancelTween('boom1');
    cancelTween('Screen2');
    objectPlayAnimation('Screen2', 'idle', false)
    objectPlayAnimation('boom2', 'idle', false)
    objectPlayAnimation('boom1', 'idle', false)
end

--if curStep % 8 == 0 and getProperty('camZooming') and secondbeat then
  --  triggerEvent('Add Camera Zoom', 0.02, 0.02)
--end
end

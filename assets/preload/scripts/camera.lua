local oppx = 932.5 -- gf
local oppy = 524.5
local oppxbf = 1219 -- bf
local oppybf = 521.5
local oppxdad = 400 -- dad
local oppydad = 500
local oppxmom = 1180 -- mom
local oppymom = 370
local camoffsdad = 20
local camoffsmom = 20
local camoffs = 20
local followchars = true
local middle = false
local middlex = 400

local WDAD_Sing = false
local MOM_Sing = false

function onUpdate(elapsed)
	if followchars == true then
        if mustHitSection == false then   
            if MOM_Sing == true and not WDAD_Sing then 
                if getProperty('mom.animation.curAnim.name') == 'singLEFT' then
                    triggerEvent('Camera Follow Pos',oppxmom-camoffsmom,oppymom)
                end
                if getProperty('mom.animation.curAnim.name') == 'singRIGHT' then
                    triggerEvent('Camera Follow Pos',oppxmom+camoffsmom,oppymom)
                end
                if getProperty('mom.animation.curAnim.name') == 'singUP' then
                    triggerEvent('Camera Follow Pos',oppxmom,oppymom-camoffsmom)
                end
                if getProperty('mom.animation.curAnim.name') == 'singDOWN' then
                    triggerEvent('Camera Follow Pos',oppxmom,oppymom+camoffsmom)
                end
                if getProperty('mom.animation.curAnim.name') == 'idle' then
                    triggerEvent('Camera Follow Pos',oppxmom,oppymom);
                end
        else 
            if WDAD_Sing == true and not MOM_Sing then
				if getProperty('wdad.animation.curAnim.name') == 'singLEFT' then
					triggerEvent('Camera Follow Pos',oppxdad-camoffsdad,oppy)
				end
				if getProperty('wdad.animation.curAnim.name') == 'singRIGHT' then
					triggerEvent('Camera Follow Pos',oppxdad+camoffsdad,oppy)
				end
				if getProperty('wdad.animation.curAnim.name') == 'singUP' then
					triggerEvent('Camera Follow Pos',oppxdad,oppydad-camoffsdad)
				end
				if getProperty('wdad.animation.curAnim.name') == 'singDOWN' then
					triggerEvent('Camera Follow Pos',oppxdad,oppydad+camoffsdad)
				end
				if getProperty('wdad.animation.curAnim.name') == 'idle' then
					triggerEvent('Camera Follow Pos',oppxdad,oppydad);
				end            
        else 
            if not WDAD_Sing and not MOM_Sing then
				if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
					triggerEvent('Camera Follow Pos',oppx-camoffs,oppy)
					
				end
				if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
					triggerEvent('Camera Follow Pos',oppx+camoffs,oppy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singUP' then
					triggerEvent('Camera Follow Pos',oppx,oppy-camoffs)
				end
				if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
					triggerEvent('Camera Follow Pos',oppx,oppy+camoffs)
				end
				if getProperty('dad.animation.curAnim.name') == 'idle' then
					triggerEvent('Camera Follow Pos',oppx,oppy);
				end        
            end
        end
       
        end  
        else
			if middle then 
				if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
					triggerEvent('Camera Follow Pos',oppxbf-camoffs-middlex,oppybf) 
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
					triggerEvent('Camera Follow Pos',oppxbf+camoffs-middlex,oppybf)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
					triggerEvent('Camera Follow Pos',oppxbf-middlex,oppybf-camoffs)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
					triggerEvent('Camera Follow Pos',oppxbf-middlex,oppybf+camoffs)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
					triggerEvent('Camera Follow Pos',oppxbf-middlex,oppybf);
				end
            else
				if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
					triggerEvent('Camera Follow Pos',oppxbf-camoffs,oppybf) 
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
					triggerEvent('Camera Follow Pos',oppxbf+camoffs,oppybf)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
					triggerEvent('Camera Follow Pos',oppxbf,oppybf-camoffs)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
					triggerEvent('Camera Follow Pos',oppxbf,oppybf+camoffs)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
					triggerEvent('Camera Follow Pos',oppxbf,oppybf);
				end
           
        end
	end
    else
        triggerEvent('Camera Follow Pos','','');
    end


	if curStep == 1146 then 
        WDAD_Sing = true;
    end

	if curStep == 2107 then 
		middle = true;
		MOM_Sing = false;
        WDAD_Sing = false;
	end



	if curStep == 2210 then
		middle = false;
        MOM_Sing = true;
        WDAD_Sing = false;
    end

	if curStep == 2491 then
        MOM_Sing = false;
        WDAD_Sing = true;
    end

	if curStep == 2619 then -- dad bf mom
		doTweenZoom('camz','camGame',0.65,1,'expoOut')
		middle = true;
		MOM_Sing = false;
        WDAD_Sing = false;
    end

	if curStep == 2683 then -- gf bf
        middle = false;
    end

	if curStep == 2747 then -- dad bf mom
		doTweenZoom('camz','camGame',0.65,1,'expoOut')
		middle = true;
    end

	if curStep == 2875 then -- mom bf
		middle = false;
		MOM_Sing = true;
        WDAD_Sing = false;
    end

	if curStep == 2939 then -- dad bf
		middle = false;
		MOM_Sing = false;
        WDAD_Sing = true;
    end

	if curStep == 3003 then -- all 3003
		doTweenZoom('camz','camGame',0.65,1,'expoOut')
		middle = true;
		MOM_Sing = false;
        WDAD_Sing = false;
    end



	

end
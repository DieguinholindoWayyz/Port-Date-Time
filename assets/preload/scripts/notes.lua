function onUpdate(elapsed)



    if curStep == 2107 then -- down 2107
		tweenHUD('down',3,'expoOut')		
	end

	if curStep == 2123 then -- down
		tweenHUD('right',3,'expoOut')		
	end

	if curStep == 2139 then -- down
		tweenHUD('left',3,'expoOut')		
	end

	if curStep == 2155 then -- down
		tweenHUD('down',3,'expoOut')		
	end

	if curStep == 2164 then -- down
		tweenHUD('right',3,'expoOut')		
	end

	if curStep == 2171 then -- down
		tweenHUD('down',3,'expoOut')		
	end

	if curStep == 2187 then -- down
		tweenHUD('right',3,'expoOut')		
	end

	if curStep == 2203 then -- down
		tweenHUD('left',3,'expoOut')		
	end

	if curStep == 2219 then -- down
		tweenHUD('down',3,'expoOut')		
	end

	if curStep == 2228 then -- down
		tweenHUD('right',3,'expoOut')		
	end

	if curStep == 2235 then -- down
		tweenHUD('default',2,'expoOut')		
	end

	if curStep == 2619 then -- down
		tweenHUD('left',3,'expoOut')		
	end

	if curStep == 2633 then -- down
		tweenHUD('right',3,'expoOut')		
	end

	if curStep == 2651 then -- down
		tweenHUD('left',3,'expoOut')		
	end

	if curStep == 2665 then -- down
		tweenHUD('down',4,'expoOut')		
	end

	if curStep == 2683 then -- down
		tweenHUD('left',3,'expoOut')		
	end

	if curStep == 2697 then -- down
		tweenHUD('right',3,'expoOut')		
	end

	if curStep == 2715 then -- down
		tweenHUD('left',3,'expoOut')		
	end

	if curStep == 2729 then -- down
		tweenHUD('down',3,'expoOut')		
	end

	if curStep == 2737 then -- down
		tweenHUD('up',3,'expoOut')		
	end

	if curStep == 2761 then -- down
		tweenHUD('right',3,'expoOut')		
	end

	if curStep == 2779 then -- down
		tweenHUD('down',3,'expoOut')		
	end

	if curStep == 2793 then -- down
		tweenHUD('left',3,'expoOut')		
	end

	if curStep == 2811 then -- down
		tweenHUD('up',3,'expoOut')		
	end

	if curStep == 2825 then -- down
		tweenHUD('right',3,'expoOut')		
	end

	if curStep == 2843 then -- down
		tweenHUD('down',3,'expoOut')		
	end

	if curStep == 2857 then -- down
		tweenHUD('left',3,'expoOut')		
	end

	if curStep == 2865 then -- down
		tweenHUD('right',3,'expoOut')		
	end

	if curStep == 2875 then -- down
		tweenHUD('default',2,'expoOut')		
	end

	if curStep == 3003 then -- down
		tweenHUD('down',3,'expoOut')		
	end

	if curStep == 3028 then -- down
		tweenHUD('up',3,'expoOut')		
	end

	if curStep == 3035 then -- down
		tweenHUD('left',3,'expoOut')		
	end

	if curStep == 3059 then -- down
		tweenHUD('right',3,'expoOut')		
	end

	if curStep == 3067 then -- down
		tweenHUD('up',3,'expoOut')		
	end

	if curStep == 3091 then -- down
		tweenHUD('left',3,'expoOut')		
	end

	if curStep == 3099 then -- down
		tweenHUD('down',3,'expoOut')		
	end

	if curStep == 3115 then -- down
		tweenHUD('up',3,'expoOut')		
	end

	if curStep == 3135 then -- down
		tweenHUD('default',3,'expoOut')		
	end
   
	if not middlescroll then 
		if curStep == 2218 then --2218
			runTimer('PlayerNotes_LEFT', 1)    
			runTimer('OPPONENTNotes_OFFSCREEN_LEFT', 1)
			runTimer('AlphaOPPONENT_0', 4)
		end
	
		if curStep == 2338 then --2340
			runTimer('Summon')
			runTimer('AlphaOPPONENT_1',2)    
		end
		-- 412 524 636 748 pl mid
	
		-- 82 194   971 1083 op 
		if curStep == 2472 then 
			runTimer('PlayerNotes_Right')   
			runTimer('OPPONENTNotes_OFFSCREEN_RIGHT')  
			
			runTimer('OPPONENTNotes_OFFSCREEN_LEFTFAST',2)   
			runTimer('OpponentNotes_LEFT',2.1)  
		end
	
		if curStep == 2619 then
			runTimer('v3AlphaOPPONENT_0') 
			runTimer('MiddleOpponent') 
			runTimer('MiddlePlayer')  
			runTimer('BreakOpponentInTwo',1.8) 
		end
	
		if curStep == 2668 then 
			runTimer('MiddleOpponent') 
			runTimer('v3AlphaOPPONENT_0') 
		end
	
		if curStep == 2733 then 
			runTimer('AlphaOPPONENT_0') 
			runTimer('BreakOpponentInTwo') 
		end
	
		if curStep == 2796 then 
			runTimer('MiddleOpponent') 
			runTimer('v3AlphaOPPONENT_0') 
		end
	
		if curStep == 2850 then --2860
			runTimer('AlphaOPPONENT_1') 
			runTimer('PlayerNotes_LEFT') 
			runTimer('OpponentNotes_Right') 
		end
	
		if curStep == 2927 then --2860
			runTimer('PlayerNotes_Right')   
			runTimer('OPPONENTNotes_OFFSCREEN_RIGHT')  
			runTimer('AlphaOPPONENT_1') 
			runTimer('OPPONENTNotes_OFFSCREEN_LEFTFAST',2)   
			runTimer('OpponentNotes_LEFT',2.1)  
		end
	
		if curStep == 2990 then --2860
			runTimer('AlphaOPPONENT_0') 
			runTimer('MiddleOpponent') 
			runTimer('MiddlePlayer')  
			runTimer('BreakOpponentInTwo',1.8) 
		end
	end


	



end

function onTimerCompleted(tag, loops, loopsLeft)

	if tag == 'MiddleOpponent' then -- elasticInOut
		noteTweenX('strumLineNotesP0', 0, 412, 0.5, 'quintInOut')
		noteTweenX('strumLineNotesP1', 1, 524, 0.5, 'quintInOut')
		noteTweenX('strumLineNotesP2', 2, 636, 0.5, 'quintInOut')
		noteTweenX('strumLineNotesP3', 3, 748, 0.5, 'quintInOut')
	 end
	 
	 if tag == 'MiddleOpponent' then -- elasticInOut
		noteTweenX('strumLineNotesP4', 4, 412, 0.5, 'quintInOut')
		noteTweenX('strumLineNotesP5', 5, 524, 0.5, 'quintInOut')
		noteTweenX('strumLineNotesP6', 6, 636, 0.5, 'quintInOut')
		noteTweenX('strumLineNotesP7', 7, 748, 0.5, 'quintInOut')
	 end

	 if tag == 'BreakOpponentInTwo' then -- elasticInOut
		noteTweenX('strumLineNotesP4', 0, 82, 0.5, 'elasticInOut')
		noteTweenX('strumLineNotesP5', 1, 194, 0.5, 'elasticInOut')
		noteTweenX('strumLineNotesP6', 2, 971, 0.5, 'elasticInOut')
		noteTweenX('strumLineNotesP7', 3, 1083, 0.5, 'elasticInOut')
		for i = 0,3 do
            noteTweenAlpha('noteAppear'..i, i, 0.5, 1, 'linear')
        end
	 end

	if tag == 'AlphaOPPONENT_0' then
		for i = 0,3 do
            noteTweenAlpha('noteAppear'..i, i, 0, 0.5, 'linear')
        end	
	 end

	 if tag == 'v2AlphaOPPONENT_0' then
		for i = 0,3 do
            noteTweenAlpha('noteAppear2'..i, i, 0.2, 0.001, 'elasticInOut')
        end	
	 end

         if tag == 'v3AlphaOPPONENT_0' then
		for i = 0,3 do
            noteTweenAlpha('noteAppear2'..i, i, 0.2, 0.001, 'elasticInOut')
        end	
	 end

	if tag == 'AlphaOPPONENT_1' then
		for i = 0,3 do
            noteTweenAlpha('noteAppear'..i, i, 1, 0.5, 'linear')
        end
        


		for i = 0,3 do
			if not downscroll then 
				noteTweenY('strumLineNotesMOVE' .. i, i, 50, 2, 'cubeInOut')
			else
				noteTweenY('strumLineNotesMOVE' .. i, i, 570, 2, 'cubeInOut')
			end
            
        end
	 end 
    
    if tag == 'Summon' then
       noteTweenX('strumLineNotesP4', 0, 732, 0.0001, 'sineInOut')
       noteTweenX('strumLineNotesP5', 1, 844, 0.0001, 'sineInOut')
        noteTweenX('strumLineNotesP6', 2, 956, 0.0001, 'sineInOut')
        noteTweenX('strumLineNotesP7', 3, 1068, 0.0001, 'sineInOut')

		for i = 0,3 do
			if not downscroll then 
				noteTweenY('strumLineNotesMOVE' .. i, i, 50+40, 0.0001, 'cubeInOut')
			else
				noteTweenY('strumLineNotesMOVE' .. i, i, 570-40, 0.0001, 'cubeInOut')
			end
            
        end
      
    end

    if tag == 'PlayerNotes_LEFT' then
		noteTweenX('strumLineNotesP42', 4, 92, 1.1, 'quintInOut')
        noteTweenX('strumLineNotesP52', 5, 204, 1.1, 'quintInOut')
        noteTweenX('strumLineNotesP62', 6, 316, 1.1, 'quintInOut')
        noteTweenX('strumLineNotesP72', 7, 428, 1.1, 'quintInOut')
     end

	 if tag == 'OpponentNotes_LEFT' then
		noteTweenX('strumLineNotesP4', 0, 92, 0.6, 'elasticInOut')
        noteTweenX('strumLineNotesP5', 1, 204, 0.6, 'elasticInOut')
        noteTweenX('strumLineNotesP6', 2, 316, 0.6, 'elasticInOut')
        noteTweenX('strumLineNotesP7', 3, 428, 0.6, 'elasticInOut')
     end

	 if tag == 'OpponentNotes_Right' then
		noteTweenX('strumLineNotesP4', 0, 732, 0.6, 'quintInOut')
        noteTweenX('strumLineNotesP5', 1, 844, 0.6, 'quintInOut')
        noteTweenX('strumLineNotesP6', 2, 956, 0.6, 'quintInOut')
        noteTweenX('strumLineNotesP7', 3, 1068, 0.6, 'quintInOut')
     end

	 if tag == 'PlayerNotes_Right' then
		noteTweenX('strumLineNotesP4', 4, 732, 1.1, 'elasticInOut')
        noteTweenX('strumLineNotesP5', 5, 844, 1.1, 'elasticInOut')
        noteTweenX('strumLineNotesP6', 6, 956, 1.1, 'elasticInOut')
        noteTweenX('strumLineNotesP7', 7, 1068, 1.1, 'elasticInOut')
     end

    if tag == 'OPPONENTNotes_OFFSCREEN_LEFT' then
 

        --opponent 92 204 316 428
        --player 732 844 956 1068
		for i = 0,3 do
            noteTweenX('strumLineNotesOp' .. i, i, -600, 1, 'sineInOut')
        end
    end

	if tag == 'OPPONENTNotes_OFFSCREEN_LEFTFAST' then
		
 
		 --opponent 92 204 316 428
		 --player 732 844 956 1068
		 for i = 0,3 do
			 noteTweenX('strumLineNotesOp' .. i, i, -1000, 0.00001, 'sineInOut')
		 end
	 end

	if tag == 'OPPONENTNotes_OFFSCREEN_RIGHT' then

 
		 --opponent 92 204 316 428
		 --player 732 844 956 1068
		 for i = 0,3 do
			 noteTweenX('strumLineNotesOp' .. i, i, 1600, 0.4, 'sineInOut')
		 end
	 end
end   

function tweenHUD(direction, duration, ease)
	if (not middlescroll) then 
		cancelTween('camHUD')
		cancelTween('camHUD2')
		cancelTween('camHUD3')
		cancelTween('other2')
		cancelTween('other3')
		cancelTween('other')
		
		if direction == 'default' then 
			doTweenAngle('camHUD3','camHUD',0,duration,ease)
			doTweenY('camHUD','camHUD',0,duration,ease)
			doTweenX('camHUD2','camHUD',0,duration,ease)
	
	
		end
	
		if direction == 'down' then 
			doTweenAngle('camHUD3','camHUD',0,duration,ease)
			doTweenY('camHUD','camHUD',30,duration,ease)
			doTweenX('camHUD2','camHUD',0,duration,ease)
		end
	
		if direction == 'right' then 
			doTweenX('camHUD','camHUD',40,duration,ease)
			doTweenY('camHUD2','camHUD',0,duration,ease)
			doTweenAngle('camHUD3','camHUD',1.4,duration,ease)
	
		
	
		end
	
		if direction == 'up' then 
			doTweenAngle('camHUD3','camHUD',0,duration,ease)
			doTweenY('camHUD','camHUD',-30,duration,ease)
			doTweenX('camHUD2','camHUD',0,duration,ease)
		end
	
		if direction == 'left' then 
			doTweenX('camHUD','camHUD',-40,duration,ease)
			doTweenY('camHUD2','camHUD',0,duration,ease)
			doTweenAngle('camHUD3','camHUD',-1.4,duration,ease)
		end
	end
	
	
	
end
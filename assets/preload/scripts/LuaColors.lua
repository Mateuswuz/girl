function onCreate()

    if not lowQuality then
     
     makeLuaSprite('cglucesL', 'LEFT LIGHT', -60, 0);
     scaleObject('cglucesL', 0.9,0.9);
     setObjectCamera('cglucesL', 'other');
	
	makeLuaSprite('cglucesD', 'DOWN LIGHT', -60, 0);
	scaleObject('cglucesD', 0.9,0.9);
	setObjectCamera('cglucesD', 'other');
	
	makeLuaSprite('cglucesU', 'UP LIGHT', -60, 0);
	 scaleObject('cglucesU', 0.9,0.9);
		setObjectCamera('cglucesU', 'other');
		
	makeLuaSprite('cglucesR', 'RIGHT LIGHT', -60, 0);    
	scaleObject('cglucesR', 0.9,0.9);
	setObjectCamera('cglucesR', 'other');
	 
	 addLuaSprite('cglucesL', false);
	 addLuaSprite('cglucesD', false);
	 addLuaSprite('cglucesU', false);
	 addLuaSprite('cglucesR', false);
	 setProperty('cglucesL.alpha', 0)
	 setProperty('cglucesD.alpha', 0)
	 setProperty('cglucesU.alpha', 0)
	 setProperty('cglucesR.alpha', 0)

end
	 
end
	 
function goodNoteHit(id, noteData, isSustainNote)
	if noteData == 0 then
  	
  	doTweenAlpha('Ele', 'cglucesL', 1.5, 0.1, 'linear');
  
			
	elseif noteData == 1 then
	
	doTweenAlpha('De', 'cglucesD', 1.5, 0.1, 'linear');
		
				
	elseif noteData == 2 then
						              doTweenAlpha('Upa', 'cglucesU', 1.5, 0.1, 'linear');
	
	elseif noteData == 3 then
						                doTweenAlpha('Erre', 'cglucesR', 1.5, 0.1, 'linear');
    end
end
	
function onTweenCompleted(tag)
	if tag == 'Ele' then
						                doTweenAlpha('europa', 'cglucesL', 0, 0.5, 'linear');	            
						                end
						                if tag == 'De' then
	  
	  doTweenAlpha('mexicano', 'cglucesD', 0, 0.5, 'linear');
	  
	  end
    
    if tag == 'Upa' then
						               doTweenAlpha('mexicannoises', 'cglucesU', 0, 0.5, 'linear');
						                end
						                if tag == 'Erre' then
						               doTweenAlpha('ugauga', 'cglucesR', 0, 0.5, 'linear');
		
	end

    if tag == 'Text' then

   doTweenAlpha('Text', 'sion', 0.34, 0.5, 'currentBeat');
    				               
	end				
end
function onUpdate(elapsed)
	if dadName == 'jon ak 47' then --replace the name for your character name
	  if curStep >= 0 then
  
		songPos = getSongPosition()
  
		local currentBeat = (songPos/1000)*(bpm/80)
  
		doTweenY(dadTweenY, 'dad', 70-110*math.sin((currentBeat*0.25)*math.pi),0.001)
  
	  end
	end
end

function onUpdatePost()
local angleOfs = math.random(-5, 5)
	local posXOfs = math.random(-8, 8)
	local posYOfs = math.random(-4, 4)
		setProperty('iconP2.angle', angleOfs)
		setProperty('iconP2.x', getProperty('iconP2.x') + posXOfs)
		setProperty('iconP2.y', defaultY + posYOfs)
end

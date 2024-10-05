-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Black screen' then
        makeLuaSprite('black', 'dark', -220, -220);
        scaleObject('black', 40, 40);        
        setScrollFactor("black",0,0)
        setObjectCamera("black","hud")

        addLuaSprite("black",false)
	end
    if value1 == "off" then
        removeLuaSprite("black")
    end
end
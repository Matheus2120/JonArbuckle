function onCreate()
    makeLuaSprite('dark', 'dark', -600, -160);
    scaleObject('dark', 10, 5);
    addLuaSprite('dark', true);
end

local dark = true;

function onSongStart()
    if dark == true then
        doTweenAlpha('dark', 'dark', 0, 1.5);
    end
end

--Script by SEEK'S COOL DELTARUNE MOD
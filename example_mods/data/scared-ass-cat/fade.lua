function onStepHit()
if curStep == 896 then
        doTweenColor('fade', 'ak', 'FF0000', 1.9, 'sineInOut');
        makeAnimatedLuaSprite('fire', 'fire', -550, -130);
        setScrollFactor('fire', 0.1, 0);
        scaleObject('fire', 5, 5);
        addAnimationByPrefix('fire', 'idle', 'idle', 15, true)
    elseif curStep == 1441 then
        doTweenColor('back', 'ak', 'FFFFFF', 1.5, 'quadOut');
end
end
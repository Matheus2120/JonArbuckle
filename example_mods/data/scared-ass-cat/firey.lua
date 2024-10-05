function onStepHit()
if curStep == 896 then
makeAnimatedLuaSprite('fire', 'fire', -550, 340);
setScrollFactor('fire', 0.1, 0);
scaleObject('fire', 2.7, 2.7);
addAnimationByPrefix('fire', 'idle', 'idle', 15, true)
addLuaSprite('fire', true);
end
end

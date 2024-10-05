function onEndSong() 
if not allowEnd and isStoryMode and not seenCutscene then
startVideo('nermal end');
allowEnd = true;
return Function_Stop;
end
return Function_Continue;
end

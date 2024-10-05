function onCreate()
    makeLuaSprite("blackoutSpriteForEvent")
    makeGraphic("blackoutSpriteForEvent", screenWidth, screenHeight, "000000")
    scaleObject("blackoutSpriteForEvent", 1 + getProperty("defaultCamZoom"), 1 + getProperty("defaultCamZoom"))
    screenCenter("blackoutSpriteForEvent")
    setScrollFactor("blackoutSpriteForEvent", 0.0, 0.0)
    addLuaSprite("blackoutSpriteForEvent", true)
    setProperty("blackoutSpriteForEvent.alpha", 0)
end

---
--- @param elapsed float
---
function onUpdatePost(elapsed)
    scaleObject("blackoutSpriteForEvent", 1 + getProperty("defaultCamZoom"), 1 + getProperty("defaultCamZoom"))
    screenCenter("blackoutSpriteForEvent")
end

---
--- @param eventName string
--- @param value1 string
--- @param value2 string
--- @param strumTime float
---
function onEvent(eventName, value1, value2, strumTime)
    if eventName == "Blackout" then
        if value2 == "" then
            debugPrint("Error: " .. scriptName .. " - Please set blackout duration on Value 2.")
            return Function_Stop
        end

        if value1 == "a" then
            doTweenAlpha("Blackout-In-" .. curStep .. "Step", "blackoutSpriteForEvent", 1, value2, "linear")
        elseif value1 == "b" then
            doTweenAlpha("Blackout-Out-" .. curStep .. "Step", "blackoutSpriteForEvent", 0, value2, "linear")
        else
            debugPrint("Error: " .. scriptName .. " - Please set a or b on Value 1.")
        end
    end
end

---
--[[
Script By Oren
Please follow my X account :3
https://x.com/Oren_too/
]]--
---
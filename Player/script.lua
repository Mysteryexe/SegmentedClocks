moving = false
new = true
index = 0
lastString= ""
wait = 0
function subing(measureName)
    local x = SKIN:GetMeasure(measureName):GetStringValue()
    if lastString == x then
        new = false
    else
        new = true
        wait = 0
        lastString = x
    end
    if new then
        if string.len(x) <= 15 then
            moving = false
            return string.sub(x, 1, 16)
        else
            moving = true
            return string.sub(x, 1, 16)
        end
    else
        if moving then
            if index < string.len(x)-14 then
                index = index+1
                return string.sub(x, index, index+15)
            else
                if wait < 15 then
                    wait = wait+1
                else
                    wait = 0
                    index = 0
                    return string.sub(x, 1, 16)
                end
            end
        else
            return string.sub(x, 1, 16)
        end
    return string.sub(x, 1, 16)
    end
end
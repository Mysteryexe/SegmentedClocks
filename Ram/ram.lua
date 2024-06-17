function subing(measureName)
    local x = SKIN:GetMeasure(measureName):GetStringValue()
    if tonumber(x) >= 10^10 then
        usage = string.sub(x, 1, 2) .. "." .. string.sub(x, 3, 3) .. "GB"
    else
        usage = string.sub(x, 1, 1) .. "." .. string.sub(x, 2, 2) .. "!GB"
    end
    return usage
end
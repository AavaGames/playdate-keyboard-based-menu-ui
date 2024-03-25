
function math.inBoundsOfArray(value, arraySize)
    return value >= 1 and value <= arraySize
end

function math.loopIndexOfArray(index, arraySize)
    while (not math.inBoundsOfArray(index, arraySize)) do
        if (index < 1) then
            index += arraySize
        elseif (index > arraySize) then
            index -= arraySize
        else
            break
        end
    end
    return index
end

function math.pairsByKeys (t, f)
    local a = {}
    for n in pairs(t) do table.insert(a, n) end
    table.sort(a, f)
    local i = 0      -- iterator variable
    local iter = function ()   -- iterator function
        i = i + 1
        if a[i] == nil then return nil
        else return a[i], t[a[i]]
        end
    end
    return iter
end

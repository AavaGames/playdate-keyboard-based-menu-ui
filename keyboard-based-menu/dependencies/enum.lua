-- SPDX-FileCopyrightText: 2022-present pdbase contributors
--
-- SPDX-License-Identifier: MIT

-- Creates a C like enum (capitalize both variable and children)

pdbase = {}
pdbase.enum = {}

-- Can be utilized in local const and added to a class for a read-only pointer enum
function pdbase.enum.new(t)
    local result = {}
    for index, name in pairs(t) do
        result[name] = index
    end
    return result
end

function pdbase.enum.copy(enum)
    return { table.unpack(enum) }
end

function pdbase.enum.getName(enum, value)
    for name, v in pairs(enum) do
        if (value == v) then return name end
    end
end
local bfColor = 'FFFFFF'
local dadColor = 'FFFFFF'
local gfColor = 'FFFFFF'

function onCreatePost()
    bfColor = getProperty('boyfriend.color')
    dadColor = getProperty('dad.color')
    gfColor = getProperty('gf.color')
end

function onEvent(name, value1, value2)
    if name == 'White Characters' then
        local enable = tonumber(value1) or 1

        if enable == 1 then
            setProperty('bf.color', ('000000'))
            setProperty('dad.color', ('000000'))
            setProperty('gf.color', ('000000'))
        else
            setProperty('bf.color', bfColor)
            setProperty('dad.color', dadColor)
            setProperty('gf.color', gfColor)
        end
    end
end
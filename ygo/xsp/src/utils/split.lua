local function split(str, delimiter)
    if str == nil or str == '' or delimiter == nil then
        return {}
    end

    local result = {}
    for match in (str..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match)
    end
    return result
end

return split
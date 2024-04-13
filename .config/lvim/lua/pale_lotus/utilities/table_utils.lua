local table_utils = {}

function table_utils.set(list)
    local set = {}
    for _, l in ipairs(list) do set[l] = true end
    return set
end

function table.contains(table, element)
  for _, value in pairs(table) do
    if value == element then
      return true
    end
  end
  return false
end

return table_utils

---
-- Удаление дубликатов из таблицы
local uniq

--- Удаляет дубликаты из таблицы
-- @param arr Исходная таблица
-- @return Новая таблица с уникальными элементами
function uniq(arr)
  local ret = {}
  local hash = {}

  for _, val in pairs(arr) do
    if (hash[val] == nil) then
      hash[val] = true
      table.insert(ret, val)
    end
  end

  return ret
end

return uniq

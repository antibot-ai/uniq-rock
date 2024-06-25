---
-- Удаление дубликатов из массива
-- @module uniq
local uniq

--- Удаляет дубликаты из массива
-- @param arr (table) Исходная таблица
-- @return Новая таблица с уникальными элементами
-- @usage
  -- local arr = {nil, 1, 1, 2, 2, nil, nil, 3, 3}
  -- local new_arr = uniq(arr)
  --
  -- -- 1, 2, 3
  -- for i = 1, #new_arr do
  --   print(new_arr[i])
  -- end
function uniq(arr)
  local ret = {}
  local hash = {}

  for _, val in next, arr do
    if (val) and (hash[val] == nil) then
      hash[val] = true
      table.insert(ret, val)
    end
  end

  return ret
end

return uniq

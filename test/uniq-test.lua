-- test/uniq-test.lua
local luatest = require('luatest')
local g = luatest.group('translit')

-- Функция удаления дубликатов
local uniq = require('lua.uniq.init')

-- Тесты
g.test_uniq = function()
  local arr = { nil, nil, 1, 1, nil, 2, 3, 4, nil, 3, 3, 5, nil }
  local new_arr = uniq(arr)

  luatest.assert_equals(new_arr[1], 1)
  luatest.assert_equals(new_arr[2], 2)
  luatest.assert_equals(new_arr[3], 3)
  luatest.assert_equals(new_arr[4], 4)
  luatest.assert_equals(new_arr[5], 5)

  luatest.assert_equals(#new_arr, 5)
end

# Удаление дубликатов из массива
Модуль удаляет дубликаты из массива(таблицы) и возвращает новый массив с уникальными значениями.

### Параметры
- **arr** (table) Исходная таблица

# Установка
### tarantool
```bash
tt rocks install --only-server=https://rocks.antibot.ru uniq
```
### luarocks
```bash
luarocks install --server=https://rocks.antibot.ru uniq
```

# Использование
```lua
local uniq = require('uniq')

local arr = {nil, 1, 1, 2, 2, nil, nil, 3, 3}
local new_arr = uniq(arr)

-- 1, 2, 3
for i = 1, #new_arr do
 print(new_arr[i])
end
```

# Генерация ldoc
```bash
ldoc -s '!new' -d ldoc lua
```

# Тестирование
```bash
luatest test/*
```

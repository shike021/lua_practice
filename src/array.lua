#!/usr/local/bin/lua

-- array is table

-- 创建一个数组
local myArray = {10, 20, 30, 40, 50}
-- 添加新元素到数组末尾
myArray[#myArray + 1] = 60
table.remove(myArray, 2)
-- 循环遍历数组
for i = 1, #myArray do
    print(myArray[i])
end
#!/usr/local/bin/lua

-- 这是comment
print("Hello World")
print("www.shi021.com")
--[[
    这是多行comment
    这是多行comment
]]--
b=10
print(b)

-- data type
print(type("Hello world"))      --> string
print(type(10.4*3))             --> number
print(type(print))              --> function
print(type(type))               --> function
print(type(true))               --> boolean
print(type(nil))                --> nil
print(type(type(X)))            --> string
print(type(b))
print(type(true))
print(type(false))
print(type(nil))
print(type(0))
print(type(1))


-- nil
print("\n== Data Type: nil")

print("-----")
tab1 = { key1 = "val1", key2 = "val2", "val3" }
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end
print("-----")
tab1.key1 = nil
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end

-- 字符串块
print("\n== Data Type: string")

html=[[
<html>
<head></head>
<body>
    <a href="http://www.shi021.com/">就是这么简单</a>
</body>
</html>
]]
print(html)
print("html string len is:"..#html)

-- table
print("\n== Data Type: table")
local table_a = {}
local table_b = {123, "abc", "def"}
table_b["test"] = 456
table_b["3"] = 789
table_b[3] = 000 -- 覆盖原来的值
print(type(table_a))
print(#table_a)
print(#table_b)
for k, v in pairs(table_a) do
    print(k..":"..v)
end
for k, v in pairs(table_b) do
    print(k..":"..v)
end
print(table_b[3])
print(table_b["3"])
print(table_b[4])  -- nil


-- function
print("\n== Data Type: Function")
function testFun(tab,fun) -- 函数
    for k ,v in pairs(tab) do
            print(fun(k,v));
    end
end
Fun2 = testFun -- 也可以把函数存在变量中

tab={key1="val1",key2="val2"};
Fun2(tab,
function(key,val) --匿名函数
    return key.."="..val;
end
);

-- thread--  test.lua 文件末尾注释--  test.lua 文件末尾注释--  test.lua 文件末尾注释--  test.lua 文件末尾注释
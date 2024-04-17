#!/usr/local/bin/lua

local a = 'this is a string'
local b = "this is another string"
local c = [[this is multi-line strings.
2nd line.          
]]
print(a)
print(b)
print(c)

print("\n== string 长度")
print(#a)
print(string.len(a))
print(utf8.len(a))
d = "字符串测试"
print(#d)
print(string.len(d))
print(utf8.len(d))  -- 5

print("\n== string 操作")
a = "abcd"
print(a)
b = string.upper(a)
print(a.."->"..b)
c = string.lower(b)
print(b.."->"..c)
d = string.gsub(a, "bc", "xx", 1) -- 子串替换
print(a.."->"..d)
print(string.find(d, "xx", 1)) -- 从d中查找字符串xx的起始位置和结束位置
e = string.reverse(d)  -- 翻转
print(d.."->"..e)
f = string.rep(e, 2) -- 重复拷贝
print(e.."->"..f)
g1 = string.sub(a, 2)
g2 = string.sub(a, 2, 3)
print(a.."->"..g1)
print(a.."->"..g2)
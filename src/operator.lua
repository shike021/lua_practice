#!/usr/local/bin/lua

print("== 算数运算符")
a = 5
b = 2
print("除法运算 - a/b 的值为 ", a / b )  -- 除法运算
print("整除运算 - a//b 的值为 ", a // b )  -- 整除运算

print("\n== 关系运算符")
a = 21
b = 10

if( a == b )
then
   print("Line 1 - a 等于 b" )
else
   print("Line 1 - a 不等于 b" )
end
if( a ~= b )  -- 不等于
then
   print("Line 2 - a 不等于 b" )
else
   print("Line 2 - a 等于 b" )
end
if ( a < b )
then
   print("Line 3 - a 小于 b" )
else
   print("Line 3 - a 大于等于 b" )
end
if ( a > b ) 
then
   print("Line 4 - a 大于 b" )
else
   print("Line 5 - a 小于等于 b" )
end
-- 修改 a 和 b 的值
a = 5
b = 20
if ( a <= b ) 
then
   print("Line 5 - a 小于等于  b" )
end
if ( b >= a ) 
then
   print("Line 6 - b 大于等于 a" )
end

-- 关系运算符 not and or

-- 其他运算符 .. #
a = "Hello "
b = "World"
print("连接字符串 a 和 b ", a..b )
print("b 字符串长度 ",#b )
print("字符串 Test 长度 ",#"Test" )
print("菜鸟教程网址长度 ",#"www.runoob.com" )
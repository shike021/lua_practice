#!/usr/local/bin/lua

a = 5               -- 全局变量
local b = 5         -- 局部变量

function joke()
    c = 5           -- 全局变量
    local d = 6     -- 局部变量
end

joke()
print(c,d)          --> 5 nil

do
    local a = 6     -- 局部变量
    b = 6           -- 对局部变量重新赋值
    print(a,b);     --> 6 6
end

print(a,b)      --> 5 6

print("\n== swap x y")
x = 10
y = 11
print(x..","..y)
x, y = y, x
print(x..","..y)

print("\n== 赋值")
a, b, c = 0, 1
print(a,b,c)             --> 0   1   nil
a, b = a+1, b+1, b+2     -- value of b+2 is ignored
print(a,b)               --> 1   2
a, b, c = 0              -- 只对a进行了赋值
print(a,b,c)             --> 0   nil   nil
a, b, c = 0,0,0              -- 对a b c进行了赋值
print(a,b,c)             --> 0   0   0

print("\n== 多变量赋值")
a, b = 0, 1
a, b = a+1, a+1          -- 先执行=右侧
print(a,b)               --> 1   1
a, b = 0, 1
a, b = b+1, b+1
print(a,b)               --> 2   2
a, b = 0, 1
a = a+1
b = a+1
print(a,b)               --> 1   2
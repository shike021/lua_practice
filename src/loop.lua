#!/usr/local/bin/lua

print("\n== while loop")
a = 0
while (a < 10)
do
    print(a)
    a=a+1
end

print("\n== for loop")
for i = 2, 5,1  -- for i=2,5
do
    print(i)
end

a={"one", "2","three"}
for i, v in ipairs(a) do
    print(i, v)
end

print("\n== repeat until ")
b = 10
repeat
    print(b)
    b = b + 1
until (b>15)
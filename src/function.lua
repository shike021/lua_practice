#!/usr/local/bin/lua

function max(num1, num2)
    -- local res = num1;
    if (num1 > num2)
    then
        res = num1;
    else
        res = num2;
    end
    return num1, num2, res;  --多返回值
end

_, _, m = max(10, 11)
print("max is "..m)

print("\n== 可变参数")
function add(...)
    print("可变参数的数量为"..select("#",...))
    local sum = 0;
    for i, v in ipairs{...} do
        sum = sum + v;
    end
    return sum;
end
print(add(1,2,3,4,5))

print("\n== select函数")
function f(...)
    a = select(3,...)  -->从第三个位置开始，变量 a 对应右边变量列表的第一个参数
    print (a)
    print (select(3,...)) -->打印所有列表参数
end
f(0,1,2,3,4,5)
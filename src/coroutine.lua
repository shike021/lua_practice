#!/usr/local/bin/lua


function foo()
    print("协同程序 foo 开始执行")
    local value = coroutine.yield("第一次暂停 foo 的执行")
    print("协同程序 foo 恢复执行，传入的值为: " .. tostring(value))
    value = coroutine.yield("第二次暂停 foo 的执行")
    print("协同程序 foo 结束执行")
end

-- 创建协同程序
local co = coroutine.create(foo)
print("coroutine status: "..coroutine.status(co))
-- 启动协同程序
local status, result = coroutine.resume(co, 30)
print("result:"..result) -- 输出: 暂停 foo 的执行
print("coroutine status: "..coroutine.status(co))

-- 恢复协同程序的执行，并传入一个值
 status, result = coroutine.resume(co, 42)
print("result:"..result) -- 输出: 协同程序 foo 恢复执行，传入的值为: 42

print("------ resume again")
-- 恢复协同程序的执行，并传入一个值
 status, result = coroutine.resume(co, 42)
print(result) -- nil

print("coroutine status: "..coroutine.status(co))


print("\n=== 包装了coroutine的函数对象")
co1 = coroutine.wrap(function (i)
    print(i)
end)
co1(888)

print("\n=== 查看coroutine的状态，获取正在运行的coroutine")
co2 = coroutine.create(
    function()
        for i=1,10 do
            print(i)
            if i == 3 then
                print(coroutine.status(co2))  --running
                print(coroutine.running()) --thread:XXXXXX
            end
            coroutine.yield("pause"..i)
        end
    end
)
coroutine.resume(co2)
coroutine.resume(co2)
coroutine.resume(co2)

-- 通过 coroutine.status 检查协同程序 co2 的状态，输出为 suspended，表示协同程序暂停执行
print(coroutine.status(co2))   -- suspended
print(coroutine.running())
 
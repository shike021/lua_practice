-- 以只读方式打开文件
file = io.open("hello.lua", "r")

-- 设置默认输入文件为 test.lua
io.input(file)

-- 输出文件第一行
print(io.read())
print(io.read())
--print(io.read("*a")) --读取整个文件
print(io.read(10))
-- 关闭打开的文件
io.close(file)

-- 以附加的方式打开只写文件
file = io.open("hello.lua", "a")

-- 设置默认输出文件为 test.lua
io.output(file)

-- 在文件最后一行添加 Lua 注释
io.write("--  test.lua 文件末尾注释")

-- 关闭打开的文件
io.close(file)
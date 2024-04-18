#!/usr/local/bin/lua

local function add(a,b)
    assert(type(a) == "number", "a 不是一个数字")
    assert(type(b) == "number", "b 不是一个数字")
    return a+b
 end
 -- add(10) -- assert报错

 -- xpcall
 function myfunction (n)
    n = n/nil
    print(n)
 end
 
 function myerrorhandler( err )
    print( "ERROR:", err )
 end
 
 status = xpcall( myfunction, myerrorhandler, 5)
 print(status)
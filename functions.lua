--[[--

提供一组常用函数，以及对 Lua 标准库的扩展

]]

--[[--

输出格式化字符串

~~~ lua

printf("The value = %d", 100)

~~~

@param string fmt 输出格式
@param [mixed ...] 更多参数

]]
function printf(fmt, ...)
    print(string.format(tostring(fmt), ...))
end

function handler(obj, method)
    return function(...)
        return method(obj, ...)
    end
end
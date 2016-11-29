print("闭包测试1")
function xxxx()
    local x = 0 -- 内嵌函数的外部局部变量upvalue
    return function()--返回的这一个匿名函数叫做闭包
        x = x + 1
        print(x)
    end
end
x = xxxx --这样调用不会形成闭包,
x = xxxx()
x()
x()

y = xxxx()--这条语句形成了另外一个闭包
y()
print("闭包测试2")
a = {xfoo = function()print("xfoo") end}
function a.foo()--匿名函数
    print("foo")
end
a.foo()
a.xfoo()

print("访问自己需要前置声明")
local g
g = function()
    print("g foo")-- body
    g()
end
-- g() --死循环

--泛型for的文法如下
-- for <var-list> in <exp-list> do
--     <body>
-- end

print("有状态的迭代器")
 function CreateClourse()
    local x = 4
    return function ()
        x=x-1
    end  
 end

--  for i in CreateClourse do
--      print(i)
--  end
#A=[17,3,6,9,15,8,6,1,10]
A=[1,4,3,7,9,10]
#A=[5,1,3,2,6,9]
#A=[5,3,6,10,2]


i=A.length-1
# sell=A[A.length-1]
# buy=A[A.length-2]
 sell=A[i]
 buy=A[i-1]
current_profit=sell-buy
profit=sell-buy
sell_index=0
buy_index=0



while i>0 do
 
  
if sell>buy 
   if A[i]<buy
    buy=A[i]
  else
    buy=A[i-1]
  end
  else
    sell=buy
    buy=A[i-2]
    i-=1
  end


  current_profit=sell-buy



  if current_profit>profit
    profit=current_profit
    A.map.with_index { |element,index|
      if element==sell
        sell_index=index
      elsif element==buy
        buy_index=index
      end
    }
  end

  i-=1
  
end


result=[]

result.push(buy_index,sell_index)
print result
puts " The profit is: #{profit}"



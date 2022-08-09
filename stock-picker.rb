
def stock_picker(array)

 
  all_com= array.combination(2).to_a

      buy_before = all_com.select{|a,b| a<b }
     
         array_profits= buy_before.map {|e| e.inject(:-)}
     
        best_profit_value = array_profits.min
      
         i=array_profits.find_index(best_profit_value)
  best_pair = buy_before[i]
 



   p best_pair.map {|i| array.find_index(i) } 
  

end


stock_picker([17,3,6,9,15,8,6,1,10])
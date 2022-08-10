
def stock_picker(array)

 #all combination
  all_com= array.combination(2).to_a
#buy before sell validation
    buy_before = all_com.select{|a,b| a<b }
     #subtraction
         array_profits= buy_before.map {|e| e.inject(:-)}
     #find lowest value
        best_profit_value = array_profits.min
      #find index with this value
         i=array_profits.find_index(best_profit_value)
         #use this index again
  best_pair = buy_before[i]
#print index'es of this value's
  p best_pair.map {|i| array.find_index(i) } 
  
end


stock_picker([17,3,6,9,15,8,6,1,10])
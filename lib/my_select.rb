def my_select(collection)
  i = 0
  select_array=[]
  while i < collection.length
    if yield(collection[i]) #the yield here is what's passing through to the other method.  So when they have "num.even?" the method then stops, looks for the yield, and then pushes the yield values into the method.
      select_array << collection[i] #this is the resulting values passed through.
    end
    i+=1
  end
  select_array
end

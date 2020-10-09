def my_each(array)
  i = 0
  while i < array.length
     yield array[i]
     i+=1
  end
  array
end

def my_collect(array)
  i = 0
  new = []
  while i < array.length
     new << yield(array[i])
     i += 1
  end
  new
end

def my_select(collection)
  i = 0
  new = []
  while i < collection.length
     if yield(collection[i]) == true
        new << collection[i]
     end
     i += 1
  end
  new
end
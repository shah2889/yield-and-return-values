def hello(array)
   i = 0
   while i < array.length
     yield(array[i])
     i += 1
   end
 end 
 
 
 hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }

 def hello(array)
   i = 0
   while i < array.length
     binding.pry
     yield(array[i])
     i += 1
   end
 end 
 Now, run the file with ruby lib/practicing_returns.rb. You should be dropped right into your binding. Let's manually execute our yield so that we can see the return value. In the Pry console in your terminal:
 
 yield(array[i])

 def hello(array)
   i = 0
   collection = []
   while i < array.length
     collection << yield(array[i])
     i += 1
   end
 end 

 def hello(array)
   i = 0
   collection = []
   while i < array.length
     collection << yield(array[i])
     i += 1
   end
   collection
 end 
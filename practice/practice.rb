module MyEnumerable
  def my_each
    for i in 0...self.length 
      yield(self[i])
    end 
  end

  def my_select
    results = []
    self.my_each { |x| results << x if yield(x) }
    results
  end 


end 

class Array
  include MyEnumerable
end 

numbers = [1,2,3,4,5,6,7,8,9,10]

num_array.my_each { |num| puts num}

evens = numbers.my_select { |elem| elem.even?}
print evens
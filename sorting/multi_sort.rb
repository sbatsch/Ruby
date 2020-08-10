=begin
this ruby method can sort an array either in ascending aplphabetical order
or descending alphabetical order
=end 

def alphabetize(arr, rev=false)
  if rev == false
    return arr.sort! { |firstItem, secondItem| firstItem <=> secondItem }
  else
    return arr.sort! { |firstItem, secondItem| secondItem <=> firstItem }
  end 
end 

heroes = ['Frozone', 'Elastigirl', 'Gazerbeam', 'Violet', 'Dash', 'Jack-Jack']

puts "A-Z: #{alphabetize(heroes)}"
puts "Z-A: #{alphabetize(heroes, rev=true)}"




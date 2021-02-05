def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    #array.sort do |a, b|
    #    if a == b
    #      0
    #    elsif a > b
    #      -1
    #    elsif a < b
    #      1
    #    end
    #end 
    a1=array.sort
    a1.reverse
end

def sort_array_char_count(array)
    array.map.sort do |a, b|
        if a.length == b.length
          0
        elsif a.length < b.length
          -1
        elsif a.length > b.length
          1
        end
    end 
end

def swap_elements(array)
   #temp=array[1]
   #array[1]=array[2]
   #array[2]=temp
   swap_elements_from_to(array, 1,2)
   array
end

def swap_elements_from_to(array, index, destination_index)
    temp=array[index]
    array[index]=array[destination_index]
    array[destination_index]=temp
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.each do |str|
    str[2] = "$"
    str
  end
end

def find_a(array)
  array.select{|i| i[0]=="a"}
end

def sum_array(array)
  #sum=0
  #array.each {|i| sum+=i}
  #sum
  array.inject do |sum, num|
    sum+num
  end
end

def add_s(array)
  arr=[]
  array.collect do |i|
    if i != array[1]
      arr<<i+ "s"
    else 
      arr<<i
    end
  end 
  arr
end
def sort_array_asc (integers)
  integers.sort
end

def sort_array_desc (integers)
  integers.sort {|first_num, second_num| second_num <=> first_num}
end

def sort_array_char_count (strings)
  strings.sort {|left, right| left.length <=> right.length}
end

def swap_elements (strings)
  strings[1], strings[2] = strings[2], strings[1]
 return strings
end

def reverse_array
  new_array = integers.reverse
  new_array
end

def kesha_maker
  kesha = []
  array.each do |word|
    word_array = word.split ""
    word_array[2] = "$"
    kesha << word_array.join
  end
  kesha
end

def find_a
  array.select{|string| string.start_with?("a")}
end

def sum_array
  integers.inject{|sum, n| sum + n}
end

def add_s
  array.each_with_index.collect do |string, index|
    if index == 1
      string
    else
      string << "s"
    end
  end
end

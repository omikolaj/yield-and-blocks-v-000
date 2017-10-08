def names_starting_with_o(list)
    list.each do | o | 
      if ( o.start_with?("O")
        yield (o) #At this point in our code, we have the variable
                  #we were looking for,
                  #so we will take it, and return to the method block.
    end
  end
end










def hello_t (array)
  if block_given?
    i = 0

    while i < array.length
      yield array[i]
      i = i + 1
    end
    array
  else
    puts "Hey! No block was given!"
  end
end

# call your method here!
hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end

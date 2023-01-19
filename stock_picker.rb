#require 'pry-byebug'
# Method to pick out best stock days
def stock_picker (array)
    # Initialize variables
    max_difference = 0
    highest_day = 0
    lowest_day = 0
    # Loop through each day 
    array.each_with_index do |item, i|
        if i == 0
            next
        else 
            # Loop through each day between index 0 and index from item above 
            for j in 0...i 
            # Substract amounts
                difference = array[i] - array[j]
                # Compare to max_difference
                if difference > max_difference
                    max_difference = difference
                    highest_day = i
                    lowest_day = j
                end
            end  
        end
    end
    puts "[#{lowest_day}, #{highest_day}]"
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
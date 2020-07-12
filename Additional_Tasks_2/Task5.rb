def Task_5 str
    result = {}
    for char in str.chars
        first_index = 0
        (0...str.length).each do |i|
            if char == str.chars[i]
                first_index = i
                break
            end
        end
        last_index = 0
        (0...str.length).each do |i|
            if char == str.chars[-i - 1]
                last_index = str.length - i - 1
                break
            end
        end
        if !result.keys.include? char
            result[char] = last_index - first_index
        end
    end
    final_result = result.keys.reject {|e| result[e] < result.values.max}
    final_result.sort!
    final_result[0]
end

puts Task_5 "tartatat"
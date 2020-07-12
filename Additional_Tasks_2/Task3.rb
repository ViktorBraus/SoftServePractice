def check_print str
    k = 0
    for char in str.chars
        if char.ord < 97 || char.ord > 102
            k += 1
        end
    end
    "#{k}/#{str.length}"
end

puts check_print 'aaazbbff'
puts check_print 'fffbb'
def count_letters str
    letter = str.chars
    letter.sort!

    c1 = 0
    (1...letter.length).each do |i|
        if letter[i].ord - letter[i - 1].ord == 1
            c1 += 1
        end
    end
    
    if c1 == letter.length - 1
        letter2 = str.chars
        c2 = 0
        (1...letter2.length).each do |i|
            if letter2[i].ord - letter2[i - 1].ord == 1
                c2 += 1
            end
        end
        if c2 > 0
            true
        else
            false
        end
    else
        false
    end
end

puts count_letters "fghi"
puts count_letters "figh"
puts count_letters "fhi"
puts count_letters "fighi"
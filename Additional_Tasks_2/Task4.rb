def prefix_lenght str
    size = 0
    (0...str.length / 2).each do |i|
        if str.chars.first(i + 1).join == str.chars.last(i + 1).join
            size = str.chars.first(i + 1).join.length
        end
    end
    size
end

puts prefix_lenght "abcd"
puts prefix_lenght "defdjskdlskdlsdef"
puts prefix_lenght "ExitedpeopleofExit"
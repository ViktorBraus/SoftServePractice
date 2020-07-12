def arr_changed *arr
    k = 0
    poper_stan = arr[0] >= 0 ? true : false
    if arr.length > 1
        (1...arr.length).each do |i|
            teper_stan = arr[i] >= 0 ? true : false
            if poper_stan != teper_stan
                k += 1
            end
            poper_stan = teper_stan
        end
    end
    k
end

puts arr_changed(-3, 4, -3, 0, -2)
puts arr_changed(3, -2, -3, -9)
puts arr_changed(0)
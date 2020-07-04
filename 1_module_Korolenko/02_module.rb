data = Object.new
time = Time.new
list = [nil, true, false, 1, 1.0, 10**1000, "Hello, World!", 1..2, time, data]

list.each do |t|
 puts t.class
end
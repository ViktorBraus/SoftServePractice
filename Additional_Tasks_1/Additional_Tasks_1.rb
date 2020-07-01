#1.	Повернути значення кварталу для введеного місяця.
puts"#1. Введіть номер місяця: "
month = gets.chomp
month = month.to_i
k1="Перший"
k2="Другий"
k3="Третій"
k4="Четвертий"
while month > 12 || month < 1 do
    puts"такого місяця не існує. Спробуйте ще. "
        month = gets.chomp
        month = month.to_i
    end
case month
when 1,2,3 then puts "Це #{k1} квартал"
when 4,5,6 then puts "Це #{k2} квартал"
when 7,8,9 then puts "Це #{k3} квартал"
when 10,11,12 then puts "Це #{k4} квартал"
end
#2.	Порахувати, скільки грошей буде заощаджено. Дано три цілих: ціна товару, знижка (у відсотках) за одиницю товару, 
    #кількість товару. Повернути: заощаджену суму (ціле число, заокруглити, якщо потрібно).
    puts"Введіть Ціну товару: "
    price = gets.chomp
    price=price.to_f
    puts"Вкажіть знижку на товар: "
    discount = gets.chomp
    discount=discount.to_f
    puts"Яку кількість даного товару ви б хотіли придбати? "
    count = gets.chomp
    count=count.to_f
    full_price=price*count
    discount_price=(price-((price*discount)/100))*count
    saved_money=full_price-discount_price
    puts"Загалом ви б могли зекономити на покупці #{saved_money} гривень."
#3.	Кожна планета має свій номер (порядок від Сонця). За заданим значенням номера повернути назва планети.
puts "#3. Введіть порядковий номер планети для отримання її найпершої назви"
number = gets.chomp

number = number.to_i
mercury="Στίλβων - Меркурій"
venus="Ἓσπερος - Венера"
earth="Γη - Земля"
mars="Πυρόεις - Марс"
jupiter="Φαέθων - Юпітер"
saturn="Φαίνων - Сатурн"
uranus="Ουρανός - Уран"
neptune="Ποσειδώνας - Нептун"
pluto="Πλούτων - Плутон"
while number.to_i >9 || number.to_i <1 do
    puts "Планети за таким порядковим номером не існує. спробуйте ще."
       number = gets.chomp
       number=number.to_i
end
    case number
    when 1 then puts"#{mercury}"
    when 2 then puts"#{venus}"
    when 3 then puts"#{earth}"
    when 4 then puts"#{mars}"
    when 5 then puts"#{jupiter}"
    when 6 then puts"#{saturn}"
    when 7 then puts"#{uranus}"
    when 8 then puts"#{neptune}"
    when 9 then puts"#{pluto}"
    end
#4.	Функція отримає два параметри – цілі числа (жодне не дорівнює нулю, друге не повинно дорівнювати 1). 
    #Сформувати вираз у вигляді ax^k, де а буде результатом множення аргументів, а показник степеня – це число, на одиницю менше за другий аргумент. 
    #Наприклад, function4(4, 7) має повернути рядок 28x^6.
    puts "#4. Вкажіть числа для побудови виразу(числа не повинні бути нулем а друге число дорівнювати 1. я перевірю)): "
    a=gets.chomp
    b=gets.chomp
    a = a.to_i
    b = b.to_i
    while a==0 || b==0 || b==1 do
            puts "Я попереджав. Перезапишіть змінні, будь ласка))"
            a=gets.chomp
            b=gets.chomp
            a=a.to_i
            b=b.to_i
    end
    puts "З введиними числами вираз буде мати вигляд: #{a*b}x^#{b-1}"
#5.	Задано три числа. Повернути найбільше число, яке можна отримати в результаті застосування до даних чисел операцій +, *, (). 
    #Числа задані в межах від 1 до 10. Числа міняти місцями не можна. Можна використовувати не всі операції (можна їх повторювати).
    puts "#5. Введіть три довільних числа через пробіл. Єдина умова:усі числа мають бути в діапазоні від 1 до 10"
    a=gets.chomp
    a = a.split (" ")
    max=0
    while (a[0].to_i<1 || a[0].to_i>10) || (a[1].to_i<1 || a[1].to_i>10)||(a[2].to_i<1 || a[2].to_i>10) do
            puts "Я попереджав. перезапишіть змінні, будь ласка))"
            a=gets.chomp
            a = a.split (" ")
    end
    if a[0].to_i>a[1].to_i then
        if a[0].to_i>a[2].to_i then
            max=a[0].to_i*(a[1].to_i+a[2].to_i)
        elsif a[0].to_i<a[2].to_i && max==0 then
            max=(a[0].to_i+a[1].to_i)*a[2].to_i
        end
        if a[1].to_i>a[2].to_i && max==0 then
            max=(a[0].to_i+a[1].to_i)*a[2].to_i        
        end
    elsif a[0].to_i<a[1].to_i then
        if a[0].to_i<a[2].to_i && max==0 then
            max=(a[0].to_i+a[1].to_i)*a[2].to_i
        elsif a[0].to_i>a[2].to_i && max==0 then
            max=a[0].to_i*(a[1].to_i+a[2].to_i)  
        end
    end
    puts max.to_i
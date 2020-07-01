# Написати програму, яка обраховує вік користувача, базуючись на даті народження у певному форматі
# Програма має видавати вік, або видавати "-1" у випадку некоректної вхідної інформації


# Ви маєте дописати частину, де вхідна інформація перевіряється на коректність
# та записує у змінну result очікуване значення - кількість років людини, або Помилка -1.

#class Calculator
  #def console_calculator

      # Остаточний вік користувача програми
      result = 0

      # Вивід інформаційного повідомлення
      puts "Програма обчислить ваш вік"
      puts "Введіть дату свого народження у такому форматі дд-мм-рррр"
      
      # Зчитування даних з консолі
      dob = gets.chomp

      
      # Формування масиву, внаслідок дії методу split (поділити) класу String
      dob = dob.split "-"
      dob[0]=dob[0].to_i
      dob[1]=dob[1].to_i
      dob[2]=dob[2].to_i
      # Використання вбудованого об’єкту Time для знаходження поточної дати 
      current_time = Time.new

      # Ініціалізації змінних, в яких міститься інформація про рік, місяць та день місяця
      current_year = current_time.year
      current_month = current_time.month
      current_day = current_time.day

      if dob[0] <0 || dob[0] >31 then
        puts "Помилка -1."
      elsif dob[1] <0 || dob[1] > 12 then 
        puts "Помилка -1."
      elsif dob[2] > current_year then 
        puts "Помилка -1."
      elsif (dob[1] == 1 || dob[1] == 3 || dob[1] == 5 || dob[1] == 7 || dob[1] == 8 || dob[1] == 10 || dob[1] == 12) && (dob[0]>31)
        puts "Помилка -1."
      elsif (dob[1] == 4 || dob[1] == 6 || dob[1] == 9 || dob[1] == 11) && (dob[0]>30)
        puts "Помилка -1."
      elsif (dob[1] == 2) && (dob[0]>29)
        puts "Помилка -1."
      else
        # Ініціалізації змінних, в яких міститься інформація про рік, місяць та день народження користувача
      dob_year = dob[2]
      dob_month = dob[1]
      dob_day = dob[0]

      d_d=0
      z=dob_year.to_i
      while z<= current_year do
        if z%4==0 then d_d+=1
        end
        z+=1
      end
    	# Алгоритм
      if current_day.to_i<dob_day.to_i then
        current_month-=1
        case current_month.to_i+1
        when 1,3,5,7,8,10,12 then current_day+=31
        when 2 then current_day+=28
        when 4,6,9,11 then current_day+=30
        else
          'Невірно вказаний місяць народження'
        end
        d_d += current_day.to_i-dob_day.to_i
      else d_d += current_day.to_i-dob_day.to_i
      end 
      if current_month.to_i<dob_month.to_i then
        d_y = current_year.to_i-dob_year.to_i
        d_y-=1
        current_month+=12
        d_m = current_month.to_i-dob_month.to_i 
      else d_m = current_month.to_i-dob_month.to_i
        d_y = current_year.to_i-dob_year.to_i
      end
      result=d_y
      if d_d>31 then
        d_m+=1
        d_d-=31
      end
      if d_m>12 then
        d_y+=1
      end
      puts"Людині: " 
      puts" Повних років: #{result};"
      puts" Місяців: #{d_m};"
      puts" Днів: #{d_d}."


      #Було творче натхнення, вирішив додати блок аби рахувало скільки лишилось до наступного дня народження))
      current_year = current_time.year
      current_month = current_time.month
      current_day = current_time.day

      d_d1=dob_day
      d_d2=dob_month
      if dob_month>current_month then
      d_d3=current_year+1
      else
      d_d3=current_year
      end
      if current_year == d_d3 then
        if current_month == d_d2 then
          if current_day == d_d1 then
        puts "Вітаємо вас зднем народження!! до наступного залишився 1 рік))"
          end
        end
      end
      if d_d1<current_day && d_d2>current_month then
        d_d1 +=31
        d_d2 -=1
        d_d1-=current_day
        if (d_d2>current_month || d_d2 == current_month) then
          d_d2-=current_month
          end
      elsif d_d1<current_day && d_d2<current_month then
        d_d1 +=31
        d_d2 -=1
        d_d1-=current_day
        d_d2+=12
        d_d2-=current_month
      elsif d_d1>current_day && d_d2<current_month then 
        d_d1-=current_day
        d_d2+=12
        d_d2-=current_month
      elsif d_d1>current_day && d_d2>current_month then
        d_d1-=current_day
        d_d2-=current_month
      end

    end
    puts"До вашого дня народження залишилось:"
    puts "днів: #{d_d1}"
    puts "місяців: #{d_d2}"
    #end

      # Перевірка вхідних даних на правильність та обчислення дати народження.
      # Поелементний аналіз базується на порівнянні послідовно років, місяців, днів місяця.



  #end
#end

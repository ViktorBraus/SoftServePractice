# Посортувати всі вхідні параметри програми в масиві

# Ви маєте дописати логіку сортування масиву у спадному порядку.

#class Calculator
    #def sort_incoming_args
    ARGV=[5,2,7,1,9]
    # при запуску скрипту з консолі, аргументи які йдуть після імені файлу попадають в масив ARGV
    puts "Отримані аргументи"
    puts ARGV
    
    # тут його слід скопіювати в новий масив
    a = ARGV.to_a

    # тут його слід посортувати в спадаючому напрямку

    # тут його слід вивести
    puts "Посортовані вхідні аргументи"
    puts a.sort.reverse
    b=(1...4).to_a
    puts b
  #end
#end
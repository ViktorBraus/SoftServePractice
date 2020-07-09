# Модуль, який надає функції для роботи з масивом queue будь-якого класу.
# Ці функції моделюють роботи двобічної черги. http://en.wikipedia.org/wiki/Double-ended_queue
# Структура двобічна черга (ще називають декою) має володіти такими методами:
#   + Додавання елемента в кінець черги
#   + Додавання елемента в початок черги
#   + Вибірка останнього елемента
#   + Вибірка першого елемента
#   + Перевірка першого елемента (без видалення з деку)
#   + Перевірка останнього елемента (без видалення з деку)
# 
# Слід врахувати, що тут будуть використовуватися методи роботи з масивами.
# 
# Ви маєте зреалізувати методи нище описаного модулю, який додає
# функціонал двобічної черги до довільного класу, в якому є змінна об’єкту
# @queue (черга).
# 

module DoubleEndedQueue

  # Додавання елемента в початок черги
  def add_first elem
    @queue.unshift(elem)
    puts @queue.to_s
  end
  
  # Додавання елемента в кінець черги
  def add_last elem
    @queue.push(elem)
    puts @queue.to_s
  end

  # Вибірка першого елемента.
  # Елемент повертається методом та видаляється з деки.
  def remove_first
    @queue.shift
    puts @queue.to_s
  end

  # Вибірка останнього елемента
  # Елемент повертається методом та видаляється з деки.
  def remove_last
    @queue.pop
    puts @queue.to_s
  end

  # Перевірка першого елемента (без видалення з деку)
  def get_first
    puts @queue.first
  end

  # Перевірка останнього елемента (без видалення з деку)
  def get_last
    puts @queue.last
  end

  # Метод, який видруковує актуальний стан деки.
  # Цей метод модифікувати не слід.
  def return_deck
    @queue.inspect
    puts @queue.to_s
  end

end

# Клас, який використовує розроблений нами модуль.
# Модифікувати не слід!
class Resource
  include DoubleEndedQueue

  def initialize arr
    @queue = arr || Array.new
  end
    
end
superarray = Resource.new [1,2,3,4]
puts"Метод додавання елементу в початок:"
superarray.add_first 9
puts"Метод додавання елементу в кінець: "
superarray.add_last 7
puts"Метод видалення елементу з початку: "
superarray.remove_first
puts"Метод видалення елементу з кінця: "
superarray.remove_last
puts"Метод виведення першого елементу: "
superarray.get_first
puts"Метод виведення останнього елементу: "
superarray.get_last
puts"Метод повертання массиву: "
superarray.return_deck
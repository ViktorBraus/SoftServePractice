# Сформувати масив всіх ключів вхідного хешу, які підпадають під визначений критерій

# Ви маєте записати у змінну results множину ключів хешу input_hash, 
# довжина яких строго більше 3 символів

class Calculator
  def hash_key_criteria 
    input_hash={"zz"=> 30,"Yesterday temperature"=> 28,"Forecast for tomorrow"=> 27}
    # вхідний хеш записуватиметься у змінну temp

    temp = input_hash

    # вибираємо всі ключі з хешу
    temp = input_hash.keys

    # формуємо множину ключів, довжина яких більше 3 символів
    result=temp.select{|t| t.size>3}

    # тут його слід вивести
    puts result

  end
end
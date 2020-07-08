# Даний клас реалізує операції з комплексними числами.
# Після реалізації цього класу ми зможемо:
# 1. порахувати модуль комплексного числа
# 2. додати два комплексні числа
# 3. помножити два комплексні числа
# 
# Оскільки комплексні числа складаються з  двох частин
# дійсної ( Real, re) та уявної (Imaginary, im), наші об’єкти
# мусять мати цих два поля.

# Ви мусете зреалізувати методи обчислення модуля, суми та добутку двох комплексних чисел.

class ComplexNumber
  # Оголосіть за допомогою attr_accessor два поля
  # re та im. Вони відповідатимуть дійсній ( Real )
  # та уявній ( Imaginary ) частинам комплексного числа.
  attr_accessor :re, :im

  # у метод initialize передайте два параметри
  # перший з яких присвойте змінній об'єкту re,
  # а другий - im.
  def initialize real, imaginary
    @re = real
    @im = imaginary
  end

  # Введіть найпростішу операцію над комплексним числом - модуль.
  # Він обраховується, як сума квадратів його складових -
  # дійсної та уявної частини.
  def modulo
    mod = ComplexNumber.new 0,0
    puts "#{re**2}+#{im**2}i"
  end

  # Операція додавання двох дійсних чисел передбачає
  # створення нового екземпляру класу ComplexNumber,
  # на присвоєння його складовим сум відповідних складових
  # об'єкта-отримувача та об'єкта-аргумента.
  # 
  # Вхідним аргументом передається 1 об'єкт класу ComplexNumber.
  # Результатом є новий об'єкт класу ComplexNumber.
  def add complex
    res = ComplexNumber.new 0, 0
    res.re = @re+complex.re
    res.im = @im+complex.im
    if res.im>0 then
    puts"#{res.re}+#{res.im}i"
    else
    puts"#{res.re}#{res.im}i"
    end
  end

  # Операція множення двох дійсних чисел передбачає
  # створення нового екземпляру класу ComplexNumber,
  # та присвоєння його складовим таких виразів.
  # 
  # Дійсною частина нового числа буде різниця добутків
  # дійсних частин та уявних чистин двох чисел.
  # re1 * re2 - im1 * im2
  # 
  # Уявна частина - це їх сума.
  # re1 * re2 + im1 * im2
  # 
  # Вхідним аргументом передається 1 об'єкт класу ComplexNumber.
  # Результатом є новий об'єкт класу ComplexNumber.
  def multiply complex
    q = ComplexNumber.new 0, 0
    q.re = @re*complex.re-@im*complex.im
    q.im = @re*complex.re+@im*complex.im
    puts "#{q.re}+#{q.im}i"

  end
end
com=ComplexNumber.new 1,1
com.modulo
summ=ComplexNumber.new 3,-1
summ1=ComplexNumber.new 2,2
summ.add(summ1).inspect
summ.multiply(summ1).inspect

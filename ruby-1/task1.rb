# Чтение строки из консоли
input = gets.chomp

# Преобразование строки в массив целых чисел
numbers = []
current_number = ""
input.each_char do |char|
  if char == ' '
    numbers << current_number.to_i unless current_number.empty?
    current_number = ""
  else
    current_number += char
  end
end
numbers << current_number.to_i unless current_number.empty?

# Вычисление среднего арифметического
sum = 0
numbers.each { |num| sum += num }
average = sum / numbers.size.to_f

# Подсчёт количества элементов, равных среднему арифметическому
count = 0
numbers.each { |num| count += 1 if num == average }

# Вывод результата
puts count

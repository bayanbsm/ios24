import Cocoa

for i in 1...100{
    if i%3 == 0 && i%5 == 0{ //сначала срабатывает условие на оба числа
        print("FizzBuzz")
    } else if i%3 == 0{
        print("Fizz")
    } else if i%5 == 0 {
        print ("Buzz")
    } else { //вывод остальных чисел
        print(i)
    }
}

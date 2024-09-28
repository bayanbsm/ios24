import Cocoa

func isPrime(_ number: Int) -> Bool {
    if number < 2 { //числа до 2 не являются прайм числами
        return false
    } else if number == 2 {
        return true
    }
    for i in 2..<(number){
        if number%i == 0{
            return false
        }
    }
    return true
}

for i in 1...100{
    if (isPrime(i)){
        print(i)
    }
}

import Cocoa

func Celcius (_ C: Double) -> (F: Double, K: Double){
    var F = (C * 9/5) + 32
    var K = C + 273.15
    return (F, K)
}
func Kelvin (_ K: Double) -> (C: Double, F: Double){
    var C = K - 273.15
    var F = C * 9/5 + 32
    return (C, F)
}

func Fahrenheit (_ F: Double) -> (C: Double, K: Double){
    var C = (32*F - 32) * 5/9
    var K = C + 273.15
    return (C, K)
}

if let input = readLine(), let tempValue = Double(input) {
    if let unit = readLine(){
        switch unit{
        case "C":
            let (F, K) = Celcius(tempValue)
            print("\(tempValue)C is \(F)F and \(K) K.")
        case "K":
            let (C, F) = Kelvin(tempValue)
            print("\(tempValue)K is \(C)C and \(F) F.")
        case "F":
            let (C, K) = Fahrenheit(tempValue)
            print("\(tempValue)F is \(C)C and \(K) K.")
        default:
            print("Invalid unit") //если температура был неверного формата
        }
    } else {
        print ("Invalid temperature") //если температура неверна
    }
}


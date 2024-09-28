import Cocoa

func addition(_ a: Double, _ b: Double) -> Double {
    return a + b
}
func subtraction(_ a: Double, _ b: Double) -> Double {
    return a - b
}
func multiplication(_ a: Double, _ b: Double) -> Double {
    return a * b
}
func division(_ a: Double, _ b: Double) throws -> Double { // так как функция может выбросить ошибку,  объявляем с ключевым словом throws
    if b == 0 { throw MathError.zeroDivision }
    return a / b
}
enum MathError: Error { //определяем enum который представляет тип ошибки
    case zeroDivision
}

func getInputNumber(prompt: String) -> Double { //инпут от пользователя
    print(prompt, terminator: " ") //разделение двух чисел в две переменные
    if let input = readLine(), let number = Double(input) {
        return number
    } else {
        print("Invalid input. Please enter a valid number.")
        return getInputNumber(prompt: prompt)
    }
}
while true {
    let num1 = getInputNumber(prompt: "Enter the first number:")
    let num2 = getInputNumber(prompt: "Enter the second number:")
    print("Choose an operation (+, -, *, /) or type 'exit' to quit: ", terminator: "")
    if let operation = readLine() {
        if operation == "exit" {
            print("Exiting the calculator. Goodbye!")
            break
        }
        
        let result: Double?
        
        switch operation {
        case "+":
            result = addition(num1, num2)
        case "-":
            result = subtraction(num1, num2)
        case "*":
            result = multiplication(num1, num2)
        case "/":
                    do {
                        result = try division(num1, num2) //используем try на случай если второе число равняется 0
                    } catch MathError.zeroDivision {
                        print("Error: Division by zero is not allowed.")
                        continue
                    } catch {
                        print("An unexpected error occurred.")
                        continue
                    }
                default:
                    print("Invalid operation. Please try again.")
                    continue
                }
                
                if let result = result {
                    print("Result: \(result)\n")
                }
            }
        }

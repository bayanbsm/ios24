import Cocoa

func fibonacci(_ n: Int) -> [Int] {
    if n <= 0 { return [] }
    if n == 1 { return [0] }
    
    var a: [Int] = [0, 1] //добавляем первые два элемента последовательности
    for i in 2..<n {
        a.append(a[i-1] + a[i-2]) //добавляем остальные элементы по формуле
    }
    
    return a
}

if let input = readLine(), let num = Int(input) {
    print(fibonacci(num))
}

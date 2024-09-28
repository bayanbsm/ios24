import Cocoa

func isPalindrome(_ text: String) -> Bool {
    var t = text.lowercased() //changing all of the characters into lowercase
    t = t.components(separatedBy: CharacterSet.alphanumerics.inverted).joined() //removing all excess characters(space, punctuations)
    var s = String(t.reversed()) //копируем строку в новую переменную и реверсим чтобы сравнить на палиндромность
    return t == s //возвращает буллиан значение
}

let result = isPalindrome(" ,kazak")
print(result)


import Cocoa

func hasUniqueCharacters(_ text: String) -> Bool {
    var t = text.components(separatedBy: CharacterSet.alphanumerics.inverted).joined() // избавляемся от лишних символов
    var uniqueCharacters: Set<Character> = [] //создание сета
    for i in t.indices {
            uniqueCharacters.insert(t[i])//добавляем все буквы в сет
        }
        if uniqueCharacters.count == t.count { //сравниваем размер строки и сета
            return true
        }
        return false
    }

let result = hasUniqueCharacters("Frankenstein or the modern Prometheus ")
print (result)

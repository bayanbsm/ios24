import Cocoa

func countingWords (input: String){
    let characters = CharacterSet.alphanumerics.union(.whitespaces)
    let finalCharacters = input.lowercased().components(separatedBy: characters.inverted).joined()
    let words = finalCharacters.split(separator: " ")
    var cnt: [String: Int] = [:]
    for i in words{
        var string_word = String(i)
        cnt[string_word, default : 0 ] += 1
    }
    for (word, freq) in cnt{
        print ("\(word) : \(freq)")
    }

}

if let input = readLine(), !input.isEmpty{
    countingWords(input: input)
} else {
    print("Please enter a valid string😵")
}

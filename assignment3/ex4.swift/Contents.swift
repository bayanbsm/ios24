import Cocoa

var shoppingList: [String] = []
var flag = true
while flag == true{ //запускаем цикл с буллиан флажком для неограниченного инпута от пользователя
    if let input = readLine(){
        switch input{
        case "add":
            if let item = readLine(){
                shoppingList.append(item)
                print("Item added!")
            }
        case "remove":
            if let item = readLine(){
                if let index = shoppingList.firstIndex(of: item) { //проверяем наличие предмета в массиве
                    shoppingList.remove(at: index)
                    print("Item removed!")
                } else {
                    print("Item not found!")
                }
            }
        case "display":
            print(shoppingList)
        case "exit":
            flag = false // выход с программы
        default:
            print ("Invalid command")
        }
        
    }
}
print ("You exited program. Thank you for using it!🙃")

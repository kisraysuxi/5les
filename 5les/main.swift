import Foundation

//Домашнее задание №5.
//
//1)Создать пустой словарь товары. Ключ - название, цена - значение. Добавить 3 товара по очереди. Посчитать сумму зв все товары.

var products = ["Молоко": 45, "Сыр": 55, "Кефир": 40]
//1 способ
//var total = Array(products.values)
//print("Cумма товаров: \(String(describing: total[1] + total[2] + total[3]))")
//2 способ
products["sandwich"] = 50

products.updateValue(45, forKey: "snickers")

print(products)

var totalSum = 0
for (key, value) in products {
    totalSum += value
}
print("итог: \(totalSum)")

var basket: [String: Int] = [:]

//2)Создать словарь из 10 товаров. Составить программу, где ридлайн вызывается 3 раза и запрашивает название товара. Ввести название товаров и вывести информацию в виде чека:
//
//------Чек-------
//Наименование:                Сумма:
//Кока_кола                         40 сом
//Хлеб                                   18 сом
//Колбаса                            160 сом
//
//-----------------
// Итого: 218 сом

 
for _ in 1...3{
    print("Введите товар: ")
    let product = readLine()

    for (key, value) in products {
        if product == key{
            basket.updateValue(value, forKey: key)
        }
    }
}
func printCheck(basket: [String: Int]){
    var totalSum = 0
    print("----Чек----")
    print("Наименование:    Сумма:")
    for (key, value) in basket {
        print("\(key)         \(value) сом")
        totalSum += value
    }
    print("------")
    print("Итого: \(totalSum)")
}
printCheck(basket: basket)



import Foundation

//Домашнее задание №5.
//
//1)Создать пустой словарь товары. Ключ - название, цена - значение. Добавить 3 товара по очереди. Посчитать сумму зв все товары.

var products = ["Молоко": 45, "Хлеб": 20, "Кефир": 40]
var total = Array(products.values)
print("Cумма товаров: \(String(describing: total[1] + total[2]))")


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


//  Created on 15/10/22.
//

import Foundation


//1. Создать класс "Машина"(Car) и задать ему свойства
//Создать функцию, которая будет увеличивать мощность авто(тюнинг по всем параметрам)
class Car{
    //  у этого класса есть свойства: переменные которые мы создадим:
    //   по дефолту пустая строка:
    var brand: String = ""
    var model: String = ""
    var year: Int = 0
    var engineCapacity: Float = 0
    var horsepower: Int = 0
    var acceleration: Float = 0
    var cost: Int = 0
    
    
    init(brand: String, model: String, year: Int, engineCapacity: Float, horsepower: Int, acceleration: Float, cost: Int) {
        self.brand = brand
        self.model = model
        self.year = year
        self .horsepower = horsepower
        self.engineCapacity = engineCapacity
        self.acceleration = acceleration
        self.cost = cost
        
    }
    //иногда пустой init и не нужен
    init(){
        
    }
    
    //у нашего класса есть метод:
    func tuning(){
        var horsepower = horsepower + 45
        var engineCapacity = engineCapacity + 0.3
        var acceleration = acceleration - 1
        var cost = cost + 300
        
        
        print("Марка машины: \(brand)\nМодель машины: \(model)\nГод выпуска: \(year)\nЛошадиные силы: \(horsepower) л.с.\nОбьем двигателя: \(engineCapacity) л\nРазгон от 0 до 100 км/ч: \(acceleration) секунд\nЦена: \(cost) долларов")
    }
}
//при создании обьекта нужен процесс иниициализации чтобы он поместился в ячейку памяти: создадим экземпляр класса
var car1 = Car()
var car2 = Car(brand: "Lexus", model: "RX330", year: 2005, engineCapacity: 3.3, horsepower: 230, acceleration: 7.8, cost: 15100)
car1.tuning()
print("-------------------------------")
car2.tuning()




//2. Создать класс "Магазин" и "Продукт" и задать им свойства
//Также создать функцию добавления продукта в магазин и отображения товаров в магазине

class Products {
    var productName: String = ""
    var provider : String = ""
    var quantity : Int = 0
    var barcode : Int = 0
    var price: Int = 0
    
    
    init(productName: String, provider: String, quantity: Int, barcode: Int, price: Int) {
        self.productName = productName
        self.provider = provider
        self.quantity = quantity
        self.barcode = barcode
        self.price = price
    }
}

var products: [Products] = []
var cigarettes = Products(productName: "Сигареты", provider: "Esse", quantity: 578, barcode: 4365236475635747, price: 120)
var beer = Products(productName: "Пиво", provider: "Урбант", quantity: 453, barcode: 452643662736, price: 75)
var tea = Products(productName: "Чай", provider: "Ахмад", quantity: 987, barcode: 4562572573, price: 80)
var chocolad = Products(productName: "Шоколад", provider: "AlpenGold", quantity: 456, barcode: 4523424415, price: 110)
var eggs = Products(productName: "Кола", provider: "Coca-Cola", quantity: 345, barcode: 494356266265, price: 70)


class SuperMarket {
    var name: String = ""
    var peopleQuantity: Int = 0
    var adress: String = ""
    var retailArea: Float = 0
    var yearlyTurnover: Int = 0
    
    
    init (name: String, peopleQuantity: Int, adress: String, retailArea: Float, yearlyTurnover: Int) {
        self.name = name
        self.peopleQuantity = peopleQuantity
        self.adress = adress
        self.retailArea = retailArea
        self.yearlyTurnover = yearlyTurnover
    }
    
    
    func addToSuperMarket() {
        products.append(cigarettes)
        products.append(beer)
        products.append(tea)
        products.append(chocolad)
        products.append(eggs)
        print ("Гипермаркет \(name)\nКоличество сотрудников: \(peopleQuantity) человек\nАдрес: \(adress)\nПлощадь торговой зоны: \(retailArea) кв. метров\nСумма годового оборота товаров: \(yearlyTurnover) сомов\nИмеются следующие товары:\n")
        dump (products)
    }
}

var superMarket = SuperMarket(name: "Фрунзе", peopleQuantity: 135, adress: "ул. М. Фрунзе, 215", retailArea: 764.5, yearlyTurnover: 567356756)

superMarket.addToSuperMarket()




//3. Создать класс "Банк" и "Клиент"
//создать функции для:
//1) Подсчета клиентов банка
//2) Отображения баланса по ID или фамилии клиента
//3) Перевода средств от клиента к другому клиенту

class User {
    var name = ""
    var id = Int()
    var account = Int()
    var cash = Int()
    
    init (name: String, id: Int, account: Int, cash: Int) {
        self.name = name
        self.id = id
        self.account = account
        self.cash = cash
    }
}
var user1 = User(name: "Олег", id: 45653, account: 233444, cash: 15456456)
var user2 = User(name: "Алина", id: 222555, account: 345565, cash: 45677432)
var user3 = User(name: "Владимир", id: 322526, account: 23412415, cash: 356432)

class Bank {
    var name = ""
    var bankUsers: [User] = []
    var UserCount = 0
    
    init (name: String, UserCount: Int) {
        self.name = name
        self.UserCount = UserCount
    }
    //Функция чтобы узнать сколько имеется в банке вкладчиков:
    func bankUserList() {
        bankUsers.append(user1)
        bankUsers.append(user2)
        bankUsers.append(user3)

        dump(bankUsers)
        
        for i in bankUsers {
            UserCount += 1
            print ("В банке зарегистрированы: \(UserCount) человек(а)")
        }
    }
    
    
    //Функция которая находит баланс счета клиента по id или ФИО
    func cashOfUsers () {
        if user1.id == 1111 || user1.name == "Олег" {
            print ("На счету Олега имеется: \(user1.cash) сомов")
        }
        if user2.id == 2222 || user2.name == "Алина" {
            print ("На счету Алины имеется: \(user2.cash) сомов")
        }
        if user3.id == 3333 || user3.name == "Владимир" {
            print ("На счету Владимира имеется: \(user3.cash) сомов")
        }
    }
    //Функция которая переводит деньги со счета на счет
    func moneyTransfer() {
        if user1.cash != nil {
            user1.cash -= 1000
            user2.cash += 1000
            print ("Перевод 1 000 сомов со счета Олег с ID-233444 на счет Алина c ID-345565\nБаланс счета Алина увеличился и стал равен \(user2.cash)\nОстаток на счету Олега стал составлять \(user1.cash)")
        }
        if user2.cash != nil {
            user2.cash -= 100000
            user3.cash += 100000
            print ("Перевод 100000 сомов со счета Алина c ID=345565 на счет Владимира c ID-23412415\nБаланс счета Владимир увеличился и стал равен \(user3.cash)\nОстаток на счету Алина стал составлять \(user2.cash)")
        }
        if user3.cash != nil {
            user3.cash -= 1000000
            user1.cash += 1000000
            print ("Перевод 1000000 сомов со счета Владимира с ID_23412415 на счет Олега c ID-233444\nБаланс счета Олега увеличился и стал равен \(user1.cash)\nОстаток на счету Владимира стал составлять \(user3.cash)")
        }
    }
}

var bankUser = Bank(name: "Демир банк", UserCount: 0)

bankUser.bankUserList()
print("----------------------------------")
bankUser.cashOfUsers()
print("----------------------------------")
bankUser.moneyTransfer()



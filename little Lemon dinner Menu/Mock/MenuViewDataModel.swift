//
//  MenuViewDataModel.swift
//  little Lemon dinner Menu
//
//  Created by Amr Mohamed on 2023-03-23.
//

import Foundation

class MenuViewDataModel : ObservableObject {
    @Published var isOpenedOptionView = false

    //Data food
    @Published var foods: [Menu] = [
        Menu(price: 10, title: "Food 1", menuCategory: .food , ordersCount: 10, ingredient: [.broccoli, .broccoli]),
        Menu(price: 20, title: "Food 2", menuCategory: .food , ordersCount: 1, ingredient: [.broccoli, .broccoli]),
        Menu(price: 20, title: "Food 3", menuCategory: .food , ordersCount: 20, ingredient: [.broccoli, .broccoli]),
        Menu(price: 30, title: "Food 4", menuCategory: .food , ordersCount: 30, ingredient: [.broccoli, .broccoli]),
        Menu(price: 40, title: "Food 5", menuCategory: .food , ordersCount: 20, ingredient: [.broccoli, .broccoli]),
        Menu(price: 50, title: "Food 6", menuCategory: .food , ordersCount: 1, ingredient: [.broccoli, .broccoli]),
        Menu(price: 60, title: "Food 7", menuCategory: .food , ordersCount: 3, ingredient: [.broccoli, .broccoli]),
        Menu(price: 70, title: "Food 8", menuCategory: .food , ordersCount: 2, ingredient: [.broccoli, .broccoli]),
        Menu(price: 80, title: "Food 9", menuCategory: .food , ordersCount: 5, ingredient: [.broccoli, .broccoli]),
        Menu(price: 10, title: "Food 10", menuCategory: .food , ordersCount: 12, ingredient: [.broccoli]),
        Menu(price: 110, title: "Food 11", menuCategory: .food , ordersCount: 10, ingredient: [ .broccoli]),
        Menu(price: 120, title: "Food 12", menuCategory: .food , ordersCount: 11, ingredient: [.broccoli])
    ]
    // Data dinks
    @Published var drinks: [Menu] = [
        Menu(price: 12, title: "Drink 1", menuCategory: .drink , ordersCount: 5, ingredient: []),
        Menu(price: 2, title: "Drink 2", menuCategory: .drink , ordersCount: 11, ingredient: []),
        Menu(price: 5, title: "Drink 3", menuCategory: .drink , ordersCount: 1, ingredient: []),
        Menu(price: 11, title: "Drink 4", menuCategory: .drink , ordersCount: 7, ingredient: []),
        Menu(price: 12, title: "Drink 5", menuCategory: .drink , ordersCount: 3, ingredient: []),
        Menu(price: 10, title: "Drink 6", menuCategory: .drink , ordersCount: 0, ingredient: []),
        Menu(price: 12, title: "Drink 7", menuCategory: .drink , ordersCount: 8, ingredient: []),
        Menu(price: 13, title: "Drink 8", menuCategory: .drink , ordersCount: 11, ingredient: []),
    ]
    //Data Desert
    @Published var desserts: [Menu] = [
        Menu(price: 5, title: "Dessert 1", menuCategory: .dessert , ordersCount: 1, ingredient: []),
        Menu(price: 22, title: "Dessert 2", menuCategory: .dessert , ordersCount: 4, ingredient: []),
        Menu(price: 9, title: "Dessert 3", menuCategory: .dessert , ordersCount: 2, ingredient: []),
        Menu(price: 10, title: "Dessert 4", menuCategory: .dessert , ordersCount: 5, ingredient: []),
        Menu(price: 12, title: "Dessert 5", menuCategory: .dessert , ordersCount: 12, ingredient: []),
        Menu(price: 2, title: "Dessert 6", menuCategory: .dessert , ordersCount: 11, ingredient: [])
    ]
    //for toggling
    @Published var isShowFood = true
    @Published var isShowDrinks = true
    @Published var isShowDesserts = true
    //default sorting
    @Published var sortBy = SortBy.fromAtoZ
    
    func updateMenuItems() {
        switch sortBy {
        // Sorting by number of orders
        case .mostPopular:
            foods.sort() { $0.ordersCount > $1.ordersCount }
            drinks.sort() { $0.ordersCount > $1.ordersCount }
            desserts.sort() { $0.ordersCount > $1.ordersCount }
        // Sorting by cost from lowest to highest
        case .fromLowPrice:
            foods.sort() { $0.price < $1.price }
            drinks.sort() { $0.price < $1.price }
            desserts.sort() { $0.price < $1.price }
        // Sort by titles alphabetically and by digits
        case .fromAtoZ:
            foods.sort() {
                sortByTitle(lhs: $0, rhs: $1)
            }
            drinks.sort() {
                sortByTitle(lhs: $0, rhs: $1)
            }
            desserts.sort() {
                sortByTitle(lhs: $0, rhs: $1)
            }
        }
    }
    func sortByTitle(lhs: Menu, rhs: Menu) -> Bool {
        let lhsTitle = lhs.title.split(separator: " ")
        let rhsTitle = rhs.title.split(separator: " ")
        let lhsNumber = Int(lhsTitle[lhsTitle.count - 1]) ?? 0
        let rhsNumber = Int(rhsTitle[rhsTitle.count - 1]) ?? 0
        if lhsNumber != rhsNumber {
            return lhsNumber < rhsNumber
        } else {
            return lhs.title < rhs.title
        }
    }
}

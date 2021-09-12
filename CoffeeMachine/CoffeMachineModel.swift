//
//  CoffeMachineModel.swift
//  CoffeeMachine
//
//  Created by Ивченко Антон on 12.09.2021.
//

import UIKit

class CoffeeMachine {
    
    var coffeeTank: Double = 0
    var waterTank: Double = 0
    var milkTank: Double = 0
    var garbageTank: Double = 0
    
    
    enum drinkNeeded {
        case esspresso, americano, latte, capuchino
        
        var coffeeNeeded: Double {
            switch self {
            case .esspresso:
                return 10.0
            case .americano:
                return 20.0
            case .latte:
                return 10.0
            case .capuchino:
                return 10.0
            }
        }
        
        var milkNeeded: Double {
            switch self {
            case .esspresso:
                return 0.0
            case .americano:
                return 0.0
            case .latte:
                return 300.0
            case .capuchino:
                return 200.0
            }
        }
        
        var waterNeeded: Double {
            switch self {
            case .esspresso:
                return 35.0
            case .americano:
                return 120.0
            case .latte:
                return 35.0
            case .capuchino:
                return 35.0
            }
        }
        
        var garbageNeeded: Double {
            switch self {
            case .esspresso:
                return 200.0
            case .americano:
                return 200.0
            case .latte:
                return 300.0
            case .capuchino:
                return 300.0
            }
        }
    }
    
    func addCoffee() {
        coffeeTank += 100
        print("CoffeTank is full")
    }
    
    func addWater() {
        waterTank += 250
        print("WaterTank is full")
    }
    
    func addMilk() {
        milkTank += 1000
        print("MilkTank is full")
    }
    
    func clearGarbage() {
        garbageTank = 0
        print("GarbageTank is cleared")
    }
    
    func makeDrink (drink: drinkNeeded) {
        if coffeeTank >= drink.coffeeNeeded {
            if waterTank >= drink.waterNeeded {
                if milkTank >= drink.milkNeeded {
                    if garbageTank <= 1000 {
                        coffeeTank -= drink.coffeeNeeded
                        waterTank -= drink.waterNeeded
                        milkTank -= drink.milkNeeded
                        garbageTank += drink.garbageNeeded
                        print("Here is your \(drink) please.")
                    } else {
                        print("Clean the garbageTank please")
                    }
                } else {
                    print("Need more milk, fill it up!")
                }
            } else {
                print("Need more water, fill it up!")
            }
        } else {
            print("Need more coffee, add it!")
        }
    }
}

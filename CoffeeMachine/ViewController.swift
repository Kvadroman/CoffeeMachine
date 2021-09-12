//
//  ViewController.swift
//  CoffeeMachine
//
//  Created by Ивченко Антон on 12.09.2021.
//

import UIKit


    
    
    class ViewController: UIViewController {
        
        override func viewDidLoad() {
            super.viewDidLoad()
           
            let machine = CoffeeMachine()
            machine.makeDrink(drink: .latte)
            machine.addCoffee()
            machine.addMilk()
            machine.addWater()
            machine.makeDrink(drink: .latte)
            machine.makeDrink(drink: .esspresso)
            
        }
        
        
    }

    

    



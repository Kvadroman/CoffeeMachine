//
//  ViewController.swift
//  CoffeeMachine
//
//  Created by Ивченко Антон on 12.09.2021.
//

import UIKit

enum coffeeMachine {
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
    
    
    class ViewController: UIViewController {
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
        }
        
        
    }
    
    
        
    }
    
    


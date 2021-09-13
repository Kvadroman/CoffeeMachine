//
//  ViewController.swift
//  CoffeeMachine
//
//  Created by Ивченко Антон on 12.09.2021.
//

import UIKit
    
    class ViewController: UIViewController {
        
        @IBOutlet weak var textLabel: UILabel!
        let machine = CoffeeMachine()
        override func viewDidLoad() {
            super.viewDidLoad()
            
        
        }
        
        
        @IBAction func addMilkButton(_ sender: UIButton) {
            machine.addMilk()
            textLabel.text = machine.textField
        }
        @IBAction func garbageCleanButton(_ sender: UIButton) {
            machine.clearGarbage()
            textLabel.text = machine.textField
        }
        @IBAction func addCoffeeButton(_ sender: UIButton) {
            machine.addCoffee()
            textLabel.text = machine.textField
        }
        @IBAction func addWaterButton(_ sender: UIButton) {
            machine.addWater()
            textLabel.text = machine.textField
        }
        
        @IBAction func makeCapuchinoButton(_ sender: UIButton) {
            machine.makeDrink(drink: .capuchino)
            textLabel.text = machine.textField
        }
        @IBAction func makeLatteButton(_ sender: UIButton) {
            machine.makeDrink(drink: .latte)
            textLabel.text = machine.textField
        }
        @IBAction func makeEsspressoButton(_ sender: UIButton) {
            machine.makeDrink(drink: .esspresso)
            textLabel.text = machine.textField
        }
        @IBAction func makeAmericanoButton(_ sender: UIButton) {
            machine.makeDrink(drink: .americano)
            textLabel.text = machine.textField
        }
        
    }

    

    



//
//  ViewController.swift
//  simple-calc
//
//  Created by iGuest on 10/21/16.
//
//

import UIKit

class ViewController: UIViewController {
    var number: Double = 0.0
    var operation: String = ""
    var results: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Numbers that the user taps
    @IBAction func buttonInput(_ sender: UIButton) {
        number = number * 10 + Double(sender.titleLabel!.text!)!
        labelResults.text = ("\(Int(number))")
    }

    //Operations that the user taps
    @IBAction func buttonOperation(_ sender: UIButton) {
        print(sender.titleLabel!.text!)
        operation = sender.titleLabel!.text!
        operation = "="
        switch operation {
        case "=":
            print("equals")
            results = number
            print(results)
            print(number)
        case "+":
            print("adding")
            results = results + number
            print(results)
        case "-":
            print("subtracting")
            results = results - number
        case "*":
            print("multiplying")
            results = results * number
        case "/":
            print("dividing")
            results = results / number
        case "%":
            print("modding")
            results = results / number
        default:
            print("error")
        }
        
        number = 0
        labelResults.text = ("\(results)")
        
    }
    
    @IBOutlet weak var labelResults: UITextField!
    
}

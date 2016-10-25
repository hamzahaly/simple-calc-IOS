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
    var operation = String()
    var results: Double = 0.0
    var numArray = [Double]()
    var didPress = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        operation = "="
        labelResults.text = ("\(results)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Numbers that the user taps
    @IBAction func buttonInput(_ sender: UIButton) {
        number = number * 10 + Double(sender.titleLabel!.text!)!
        labelResults.text = ("\(Int(number))")
        didPress = true
    }

    //Operations that the user taps
    @IBAction func buttonOperation(_ sender: UIButton) {
        print(sender.titleLabel!.text!)
        switch operation {
        case "=":
            print("equals")
            print(number)
            print(results)
            if (didPress == true) {
                print("appending")
                numArray.append(number)
            }
            results = number
            didPress = false
        case "+":
            print("adding")
            results = results + number
            didPress = false
        case "-":
            print("subtracting")
            results = results - number
            didPress = false
        case "*":
            print("multiplying")
            results = results * number
            didPress = false
        case "/":
            print("dividing")
            results = results / number
            didPress = false
        case "%":
            print("modding")
            var final: Int
            final = Int(results) % Int(number)
            results = Double(final)
            didPress = false
        case "Fact":
            print("factorial")
            var fact = number
            var operand = number - 1
            if number == 0 {
                results = 1
            } else {
                for _ in 1...Int(number) - 1 {
                    fact = fact * operand
                    print(fact)
                    operand -= 1
                    results = fact
                }
            }
            labelResults.text = ("\(results)")
        case "Count":
            print("count")
            if (didPress == true) {
                print("appending")
                numArray.append(number)
            }
            didPress = false
            print(numArray)
            results = Double(numArray.count)
        case "Avg":
            print("avg")
            if (didPress == true) {
                numArray.append(number)
            }
            didPress = false
            results = 0.0
            for num in numArray {
                results += num
                print(num)
                print(results)
            }
            print(numArray)
            results = results / Double(numArray.count)
        case "Clear":
            results = number
            operation = "="
            numArray.removeAll()
            labelResults.text = ("\(results)")
            didPress = false
        default:
            print("error")
        }
        number = 0
        labelResults.text = ("\(results)")
        
        operation = sender.titleLabel!.text!
    }
    
    @IBOutlet weak var labelResults: UITextField!
    
}

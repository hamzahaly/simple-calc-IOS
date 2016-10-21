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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonInput(_ sender: UIButton) {
        number = Double(sender.titleLabel!.text!)!
        labelResults.text = ("\(Int(number))")
    }

    @IBAction func buttonOperation(_ sender: UIButton) {
        print(sender.titleLabel!.text!)
    }
    
    @IBOutlet weak var labelResults: UITextField!
}

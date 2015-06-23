//
//  ViewController.swift
//  IsItPrime
//
//  Created by Brad Guner on 2015-06-22.
//  Copyright (c) 2015 Brad Guner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var enteredNum: UITextField!
    @IBOutlet weak var primeLabel: UILabel!
    
    @IBAction func primeButton(sender: AnyObject) {
        var num = enteredNum.text.toInt()
        var prime = false
        var i:Int = 2
        if (num != nil) {
            while (!prime) {
                if (num! == 1) {
                    primeLabel.text = "\(num!) is prime."
                    prime = true
                }
                else if (num! % i == 0) {
                    if (i < num!) {
                        primeLabel.text = "\(num!) is not prime."
                        break
                    }
                    else if (i == num!) {
                        primeLabel.text = "\(num!) is prime."
                        prime = true
                    }
                }
                i++
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


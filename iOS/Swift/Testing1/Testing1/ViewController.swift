//
//  ViewController.swift
//  Testing1
//
//  Created by Brad Guner on 2015-06-17.
//  Copyright (c) 2015 Brad Guner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ageBox: UITextField!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func CalculateAge(sender: AnyObject) {
        var age = ageBox.text.toInt()
        if (age == nil) {
            resultLabel.text = "Please enter an age."
        }
        else {
            var calcAge = age! * 7
            resultLabel.text = "Your dog is \(calcAge) years old."
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


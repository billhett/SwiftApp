//
//  ViewController.swift
//  swiftApp
//
//  Created by William Hettinger on 2/23/18.
//  Copyright © 2018 William Hettinger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var theLabel: UILabel!
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    
    var tapCount = 0
    
    @IBAction func buttonTapped(_ sender: Any) {
        print("button pressed")
        self.view.backgroundColor = UIColor.gray
        print(text1.text!)
        print(text2.text!)
        print(text1)
        var addition = true
        if tapCount % 2 == 0 {
            addition = false
        }
        if addition {
            theLabel.text = "Sum is \(Double(text1.text!)! + Double(text2.text!)!)"
        } else {
            theLabel.text = "Difference is \(Double(text1.text!)! - Double(text2.text!)!)"
        }
        tapCount += 1
    }
    
    @IBAction func meTooPressed(_ sender: Any) {
        //theLabel.text = "Buttons Are Cool"
        self.view.backgroundColor = UIColor.darkGray
        theLabel.text = "Product is \(Double(text1.text!)! * Double(text2.text!)!)"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.view.backgroundColor = UIColor.red
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


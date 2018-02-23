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

    var tapCount = 0
    
    @IBAction func buttonTapped(_ sender: Any) {
        print("button pressed")
        theLabel.text = "Hello there!"
        self.view.backgroundColor = UIColor.gray
        tapCount = tapCount + 1
        print("tapcount is \(tapCount)")
        if tapCount >= 20 {
            theLabel.textColor = UIColor.red
            theLabel.text = "Over 20 presses!"
        }
    }
    
    @IBAction func meTooPressed(_ sender: Any) {
        theLabel.text = "Buttons Are Cool"
        self.view.backgroundColor = UIColor.blue
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


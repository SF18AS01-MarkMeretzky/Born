//
//  ViewController.swift
//  Born
//
//  Created by Instructor on 1/10/19.
//  Copyright © 2019 Instructor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func returnKeyPressed(_ sender: UITextField) {
        //let year: Int = Int(sender.text!)!;
        
        if sender.text == nil || sender.text!.isEmpty {
            label.text = "No text!";
            return;
        }
        let text: String = sender.text!;
        
        if Int(text) == nil {
            label.text = "Have to type digits!";
            return;
        }
        
        let year: Int = Int(text)!;
        
        sender.resignFirstResponder();
        
        let animals: [String] = [    //an array containing 12 Strings
            "monkey",    // 0
            "rooster",   // 1
            "dog",       // 2
            "pig",       // 3
            "rat",       // 4
            "ox",        // 5
            "tiger",     // 6
            "hare",      // 7
            "dragon",    // 8
            "snake",     // 9
            "horse",     //10
            "sheep"      //11
        ];
        
        let remainder: Int = year % animals.count;
        label.text = "\(year) was the year of the \(animals[remainder]).";
    }
    
}


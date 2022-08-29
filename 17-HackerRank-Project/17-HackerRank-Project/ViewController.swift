//
//  ViewController.swift
//  17-HackerRank-Project
//
//  Created by Caner Çağrı on 29.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // Multiply the entered number by 3 add 5 subtract 2 and find out if the result is odd or even swift

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let enteredNumber = 5
        
        let result = (enteredNumber * 3) + (enteredNumber + 5) + (enteredNumber - 2)
        
        if result % 2 == 0 {
            print(enteredNumber)
            print("0")
        } else {
            print(enteredNumber)
            print("1")
        }
    }


}


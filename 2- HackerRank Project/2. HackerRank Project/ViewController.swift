//
//  ViewController.swift
//  2. HackerRank Project
//
//  Created by Caner Çağrı on 28.04.2022.
//

import UIKit

  // REVERSING ARRAY

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let startingArray : [Int] = [1, 4, 3, 2]
        print(reverseArray(a: startingArray))
    }
    
    func reverseArray(a: [Int]) -> [Int] {
        var reversedArray : [Int] = []
        
        for reverse in a.reversed() {
            reversedArray.append(reverse)
        }
        return reversedArray
    }


}


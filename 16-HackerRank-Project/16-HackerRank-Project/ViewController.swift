//
//  ViewController.swift
//  16-HackerRank-Project
//
//  Created by Caner Çağrı on 29.08.2022.
//

import UIKit

class ViewController: UIViewController {

    // Find the largest number of an array. subtract this number from all the numbers in the array
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let array = [3, 5, 17 , 11 , 4 , 6 , 8, 1]
        var resultArray: [Int] = []
        
        let bigNumber = array.sorted().last!
        
        for array in array {
            let result = bigNumber - array
            resultArray.append(result)
        }
        
        print(resultArray)
    }
}


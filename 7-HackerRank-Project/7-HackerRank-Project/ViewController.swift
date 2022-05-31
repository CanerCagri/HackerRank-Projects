//
//  ViewController.swift
//  7-HackerRank-Project
//
//  Created by Caner Çağrı on 31.05.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        miniMaxSum()
    }
    
//    Sample Input
//    1 2 3 4 5
    
//    Sample Output
//    10 14
//    Explanation
//
//    The numbers are , , , , and . Calculate the following sums using four of the five integers:
//
//    Sum everything except 1 the sum is . 2 + 3 + 4 + 5 = 14
//    Sum everything except 2 the sum is . 1 + 3 + 4 + 5 = 13
//    Sum everything except 3 the sum is . 1 + 2 + 4 + 5 = 12
//    Sum everything except 4 the sum is . 1 + 2 + 3 + 5 = 11
//    Sum everything except 4 the sum is . 1 + 2 + 3 + 4 = 10

    
    func miniMaxSum() {
        let arr = [1,2,3,4,5]
        let sorted = arr.sorted()

           let minSum = sorted.dropLast().reduce(0, +)
           let maxSum = sorted.dropFirst().reduce(0, +)

           print("\(minSum) \(maxSum)")
       
    }


}


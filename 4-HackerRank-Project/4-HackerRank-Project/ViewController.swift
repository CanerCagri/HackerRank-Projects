//
//  ViewController.swift
//  4-HackerRank-Project
//
//  Created by Caner Çağrı on 4.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
//    Input Format
//    The first line of the input consists of an integer .
//    The next line contains  space-separated integers contained in the array.
//
//    Output Format
//    Return the integer sum of the elements in the array.
    
    
//    Sample Input
//
//    1000000001 1000000002 1000000003 1000000004 1000000005
    
//    Output
//
//    5000000015
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let ar = [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]
        print(aVeryBigSum(ar: ar))
    }
    
    func aVeryBigSum(ar: [Int]) -> Int {
        var result = 0
        for index in 0..<ar.count {
            result += ar[index]
        }
        return result
    }
}


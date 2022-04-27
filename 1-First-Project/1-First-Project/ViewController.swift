//
//  ViewController.swift
//  1-First-Project
//
//  Created by Caner Çağrı on 19.04.2022.
//

import UIKit

class ViewController: UIViewController {
    /*
     
    Given an array of integers, find the sum of its elements.
    Complete the simpleArraySum function in the editor below. It must return the sum of the array elements as an integer.
     Sample Input

     6
     1 2 3 4 10 11
     
     Sample Output
     31
     */

    override func viewDidLoad() {
        let ar : [Int] = [1, 2, 3, 4, 10, 11]
        print(simpleArraySum(ar: ar))
    }
    func simpleArraySum(ar: [Int]) -> Int {
        var calculate : Int = 0
        for arNumber in ar {
            calculate += arNumber
        }
        return calculate
    }
}


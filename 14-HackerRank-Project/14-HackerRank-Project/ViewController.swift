//
//  ViewController.swift
//  14-HackerRank-Project
//
//  Created by Caner Çağrı on 30.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
//    Sample Input
//    STDIN           Function
//    -----           --------
//    6 3             n = 6, k = 3
//    1 3 2 6 1 2     ar = [1, 3, 2, 6, 1, 2]
    
//    Sample Output
//     5


    override func viewDidLoad() {
        super.viewDidLoad()
    
        divisibleSumPairs(n: 6, k: 3, ar: [1, 3, 2, 6, 1, 2])
    }
    
    func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
        var count = 0
        for index in 0...n - 1{
            for j in 1...n - 1{
                let result = ar[index] + ar[j]
                if result % k == 0 {
                    print("\(ar[index]) + \(ar[j]) = \(result)")
                    count += 1
                } else {
                    
                }
            }
        }
        count = count / 2
        print(count)
        return count

    }

}


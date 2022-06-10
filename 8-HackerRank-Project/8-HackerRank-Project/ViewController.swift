//
//  ViewController.swift
//  8-HackerRank-Project
//
//  Created by Caner Çağrı on 10.06.2022.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        birthdayCakeCandles()
    }
    
//    Sample Input 0
//    4
//    3 2 1 3
    
    
//    Sample Output 0
//    2
    
    
//    Explanation 0
//    Candle heights are . The tallest candles are  units, and there are  of them.

    func birthdayCakeCandles() -> Int {
        let candles = [3, 1, 2, 3]
        var maxNum = candles[0]
        var count = 0
        
        for i in candles {
            if maxNum < i {
                maxNum = i
            }
        }
        
        for i in candles {
            if i == maxNum {
                count += 1
            }
        }
        
        return count
    }
}


//
//  ViewController.swift
//  5-HackerRank-Project
//
//  Created by Caner Çağrı on 26.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    //    Sample Input
    //    STDIN           Function
    //    -----           --------
    //    6               arr[] size n = 6
    //    -4 3 -9 0 4 1   arr = [-4, 3, -9, 0, 4, 1]
    
    //    Sample Output
    //    0.500000
    //    0.333333
    //    0.166667
    
    
    //    Explanation
    //    There are  positive numbers,  negative numbers, and  zero in the array.
    //    The proportions of occurrence are positive: , negative:  and zeros: .
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        plusMinus()
    }
    
    func plusMinus() {
        let arr : [Int] = [-4, 3, -9, 0, 4, 1]
        var positiveCount = 0
        var negativeCount = 0
        var zeroCount = 0
        
        for number in arr {
            if number > 0 {
                positiveCount = positiveCount + 1
            } else if number < 0 {
                negativeCount = negativeCount + 1
            } else {
                zeroCount = zeroCount + 1
            }
            
        }
        var positiveRatio = 0.0
        var negativeRatio = 0.0
        var zeroRatio = 0.0
        
        if positiveCount > 0 {
            positiveRatio = Double(positiveCount) / Double(arr.count)
            
        }
        
        if negativeCount > 0 {
            negativeRatio = Double(negativeCount) / Double(arr.count)
        }
        
        if zeroCount > 0 {
            zeroRatio = Double(zeroCount) / Double(arr.count)
        }
        
        print(String(format: "%f", positiveRatio))
        print(String(format: "%f", negativeRatio))
        print(String(format: "%f", zeroRatio))
    }
    
    
}


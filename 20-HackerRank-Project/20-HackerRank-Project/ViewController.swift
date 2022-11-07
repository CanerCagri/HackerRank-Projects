//
//  ViewController.swift
//  20-HackerRank-Project
//
//  Created by Caner Çağrı on 7.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // Find repeated numbers in array and result most repeated number
    // Rule 1: If there is same count repeated numbers, return first repeated number
    // Rule 2: If there is no repeated number return -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getMostRepeatedNumber([5, 5, 2, 2, 1])
    }
    
    func getMostRepeatedNumber(_ numbers: [Int]) -> Int {
        let dict = Dictionary(grouping: numbers, by: { $0 } )
        
        guard var low = dict.first?.key else { return 0 }
        guard var highest = dict.first?.value.count else { return 0}
        
        for i in dict {
            if highest < i.value.count || highest == i.value.count {
                low = i.key
                highest = i.value.count
            }
        }
        
        if highest == 1 || highest == 0 {
            print("-1")
            return -1
        } else {
            print(low)
            return low
        }
    }
}


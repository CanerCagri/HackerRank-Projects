//
//  ViewController.swift
//  15-HackerRank-Project
//
//  Created by Caner Çağrı on 4.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
//    Sample Input
//    1 2 3 4 5 4 3 2 1 3 4
    
//    Sample Output
//    3
    
//    Explanation
//
//    The different types of birds occur in the following frequencies:
//
//    Type 1:2
//    Type 2:2
//    Type 3:3
//    Type 4:3
//    Type 5:1

    override func viewDidLoad() {
        super.viewDidLoad()
        migratoryBirds(arr: [1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4])
    }
    
    func migratoryBirds(arr: [Int]) -> Int {
        let dict = Dictionary(grouping: arr, by: { $0 } )
        
        var low = dict.first!.key
        var highest = dict.first!.value.count
        
        for i in dict {
            if highest < i.value.count || highest == i.value.count && low > i.key {
                low = i.key
                highest = i.value.count
            }
        }
        
        return low
    }
    
   


}


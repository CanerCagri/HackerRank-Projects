//
//  ViewController.swift
//  13-HackerRank-Project
//
//  Created by Caner Çağrı on 29.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
//    Two children, Lily and Ron, want to share a chocolate bar. Each of the squares has an integer on it.
//    Lily decides to share a contiguous segment of the bar selected such that:
//    The length of the segment matches Ron's birth month, and,
//    The sum of the integers on the squares is equal to his birth day.
    
//    Sample Input
//    1 1 1 1 1 1
//    3 2
    
//    Sample Output 1
//    0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        birthday(s: [2,5,1,3,4,4,3,5,1,1,2,1,4,1,3,3,4,2,1], d: 18, m: 7)
    }
    func birthday(s: [Int], d: Int, m: Int) -> Int {
        
        var count = 0
        
        for (i, _) in s[0...s.count - m].enumerated() {
            var sum = 0
            for j in 0..<m {
                sum += s[i+j]
            }
            if sum == d {
                count += 1
            }
        }
        return count
        
        
    }
    
    
}


//
//  ViewController.swift
//  3-HackerRank-Project
//
//  Created by Caner Çağrı on 4.05.2022.
//

import UIKit

class ViewController: UIViewController {

//    If a[i] > b[i], then Alice is awarded 1 point.
//    If a[i] < b[i], then Bob is awarded 1 point.
//    If a[i] = b[i], then neither person receives a point.
    
//    Sample Input
//    5 6 7
//    3 6 10
    
//    Sample Output
//    1 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let a = [5,6,7]
        let b = [3,6,10]
        
        print(compareTriplets(a: a, b: b))
        
    }
    
    func compareTriplets(a: [Int], b: [Int]) -> [Int] {
        
        var result = [0,0]
        for index in 0..<a.count {
            if a[index] > b[index] {
                result[0] += 1
            } else if a[index] < b[index] {
                result[1] += 1
            }
        }
        return result
    }
}


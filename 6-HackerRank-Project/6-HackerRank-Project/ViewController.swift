//
//  ViewController.swift
//  6-HackerRank-Project
//
//  Created by Caner Çağrı on 26.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
//    Sample Input
//    6
    
//    Sample Output
//         #
//        ##
//       ###
//      ####
//     #####
//    ######
    
    
//    Explanation
//    The staircase is right-aligned, composed of # symbols and spaces, and has a height and width of n = 6
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        staircase()
    }
    
    func staircase() {
        let n  = 6
        
        for index in 1...n {
            let counter = n - index
            if index != 1 {
                print()
            }
            for i in 1...n {
                if counter < i {
                    print("#", terminator: "")
                }
                else {
                    print(" ", terminator: "")
                }
            }
        }
    }
    
    
    
}


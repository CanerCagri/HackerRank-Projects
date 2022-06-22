//
//  ViewController.swift
//  11-HackerRank-Project
//
//  Created by Caner Çağrı on 22.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
//    int x1, int v1: starting position and jump distance for kangaroo 1
//    int x2, int v2: starting position and jump distance for kangaroo 2
    
//     When kangoros meet at a location , return "YES if they dont print "NO"
    
//    Sample Input
//    0 3 4 2
    
//    Sample Output
//    YES
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        kangoroProject(x1: 0, v1: 2, x2: 5, v2: 3)
    }
    
    func kangoroProject(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
        var firstKango = x1 + v1
        var secondKango = x2 + v2
        
        for _ in 1...100 where firstKango < secondKango {
            firstKango = firstKango + v1
            secondKango = secondKango + v2
            
            if firstKango == secondKango {
                return "YES"
            }
        }
        
        if firstKango > secondKango {
            return "NO"
        }
        
        return "NO"
    }
    
    
}


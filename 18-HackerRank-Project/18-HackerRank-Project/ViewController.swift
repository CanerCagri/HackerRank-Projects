//
//  ViewController.swift
//  18-HackerRank-Project
//
//  Created by Caner Çağrı on 6.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    // Find numbers in string, and sum them.
    // a-) if string like "75asdb5" result = 75 + 5
    // b-) if string like "10 a1sdb'1'" result = 10 + 1

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        FindNumbers()
    }
    
    func FindNumbers() -> Int {
        
        let str = "10 asd3db'1'"
        var number = [Int]()
        var number2 = ""
        var result = 0
        
    loop: for i in str {
            switch i {
            case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
                number2 += String(i)
                
            case "'":
                break loop
               
                
            default:
                if number2 != "" {
                    number.append(Int("\(number2)") ?? 0)
                    number2 = ""
                }
                continue
            }
            
        }
        
        if number2 != "" {
            number.append(Int("\(number2)") ?? 0)
        } else {
          
        }
        
        for i in 0..<number.count {
            result += number[i]
        }
        
        print(result)
        return result
    }
}

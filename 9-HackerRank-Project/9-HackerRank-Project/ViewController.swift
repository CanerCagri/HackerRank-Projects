//
//  ViewController.swift
//  9-HackerRank-Project
//
//  Created by Caner Çağrı on 15.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
//    Sample Input 0
//    07:05:45PM
    
//    Sample Output 0
//    19:05:45

    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeConversion()
    }
    
    func timeConversion() -> String {
        let input = "07:05:45PM"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h:mm:ssa"
        
        let lastDate = dateFormatter.date(from: input)
        dateFormatter.dateFormat = "HH:mm:ss"
        
        let date24Hour = dateFormatter.string(from: lastDate!)
        return date24Hour
    }


}


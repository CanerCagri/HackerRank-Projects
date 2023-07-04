//
//  ViewController.swift
//  22-HackerRank-Project
//
//  Created by Caner Çağrı on 4.07.2023.
//

import UIKit

class ViewController: UIViewController {

//    Input : "aaba kouq bux"
//    Let's assume that the string we have is "aaba kouq bux", the letter 'a' is repeated 3 times, the letters 'b' and 'u' are repeated 2 times.
    
//    When the number of repetitions '2', the letters 'a', 'b' and 'u' will be subtracted and the result will be 'koq x'
//    When the number of repetitions is given '3', the letter 'a' will be subtracted, the result will be 'b kouq ice'
//    When the number of repetitions '4', no letters will be omitted and the result will be 'aaba kouq bux'
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let inputString = "aaba kouq bux"
        
        let final = removeChar(inputString: inputString, count: 3)
        print(final)
    }


    func removeChar(inputString: String, count: Int) -> String {
        
        var myDict: [Character : Int] = [:]
        
        var finalString = inputString
        
        inputString.forEach { str in
            if !str.isWhitespace {
                myDict[str] = (myDict[str] ?? 0) + 1
            }
        }
        
        myDict.forEach { key,value in
            if value >= count {
                finalString = finalString.replacingOccurrences(of: String(key), with: "").trimmingCharacters(in: [" "])
            }
                
        }
        
        return finalString
    }
}


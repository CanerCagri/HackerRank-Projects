//
//  ViewController.swift
//  21-HackerRank-Project
//
//  Created by Caner Çağrı on 3.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
//     Print the reverse of the given word to the screen
//     Input = cnriOS-nHnDEao-Q68r3w-QuRly4-kW6sNa3-l37gANOU
//     Output = SOirnc-oaEDnHn-w3r86Q-4ylRuQ-3aNs6Wk-UONAg73l
    
    var strInput = "cnriOS-nHnDEao-Q68r3w-QuRly4-kW6sNa3-l37gANOU"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var array = strInput.split(separator: "-")
        var output = ""
        
        for i in array {
            
            for j in i.reversed() {
                output += "\(j)"
            }
            
            output += "-"
        }
        output.removeLast()
        
        print(output)
    }
}

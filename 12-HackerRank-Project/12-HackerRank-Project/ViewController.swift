//
//  ViewController.swift
//  12-HackerRank-Project
//
//  Created by Caner Çağrı on 28.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
//  Maria plays college basketball and wants to go pro. Each season she maintains a record of her play. She tabulates the number of times she breaks her season record for most points and least points in a game. Points scored in the first game establish her record for the season, and she begins counting from there.
    
//    Example

//    score = [12, 24, 10, 24 ]
//    Scores are in the same order as the games played. She tabulates her results as follows:
//
//                                         Count
//        Game  Score  Minimum  Maximum   Min Max
//         0      12     12       12       0   0
//         1      24     12       24       0   1
//         2      10     10       24       1   1
//         3      24     10       24       1   1
    
//    Sample Input 
//    3 4 21 36 10 28 35 5 24 42
    
//    Sample Output
//    4 0


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scores: [Int] = [3, 4, 21, 36, 10, 28, 35, 5, 24, 42]
        breakingRecords(scores: scores)
    }
    
    func breakingRecords(scores: [Int]) -> [Int] {
        var min = 0
        var max = 0
        var highestScore = scores.first
        var lowestScore = scores.first
        for index in scores {
            if index > highestScore! {
                highestScore = index
                max += 1
                continue
            } else if index < lowestScore! {
                lowestScore = index
                min += 1
                continue
            } else {
                continue
            }
        }
        let result: [Int] = [max, min]
        return result

    }


}


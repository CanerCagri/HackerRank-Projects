//
//  ViewController.swift
//  10-HackerRank-Project
//
//  Created by Caner Çağrı on 17.06.2022.
//

import UIKit

class ViewController: UIViewController {

//    Sample Input
//    4
//    73
//    67
//    38
//    33
    
//    Sample Output
//    75
//    67
//    40
//    33
    
//    Explanation

//    Student 1 received 73 , and the next multiple of 5 from 73 is 75. Since , the student's grade is 75 - 73 < 3 rounded to 75
//    Student 2 received 67 , and the next multiple of 5 from 67 is 70. Since , the grade will not be modified and the student's final grade is .
//    Student 3 received 38 , and the next multiple of 5 from 38 is 40. Since , the student's grade will be rounded to .
//    Student 4 received 33 grade below , so the grade will not be modified and the student's final grade is .
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        gradingStudents()
    }
    
    func gradingStudents() -> [Int] {
        let grades = [73, 67, 38, 33]
        var finalArray = [Int] ()
        
        for index in grades {
            
            if index >= 38 {
                var count = 0
                var arrayNumber = index
                let result = Int(arrayNumber % 5)
                
                if result != 0 {
                    for _ in 0...5 {
                        arrayNumber += 1
                        count += 1
                        let result = arrayNumber % 5
                        if result == 0 {
                            let noteResult = arrayNumber - index
                            
                            if noteResult < 3 {
                                finalArray.append(arrayNumber)
                                continue
                            } else if noteResult == 3 {
                                finalArray.append(index)
                                continue
                            } else {
                                continue
                            }
                        }
                    }
                }
            }
            
            else {
                finalArray.append(index)
                continue
            }
            
        }
        
        return finalArray

    }


}


//
//  K번째수.swift
//  CodeTestStudy
//
//  Created by 남수김 on 10/09/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

class K번째수{
    func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
        var result = [Int]()
        for com in commands{
            result.append(firstProcess(array: array, command: com))
        }
        
        print(result)
        return result
    }
    
    func firstProcess(array: [Int], command: [Int]) -> Int{
        
        let i = command[0]-1
        let j = command[1]-1
        let k = command[2]-1
        
        let temp1 = array[i...j]
        let temp2 = temp1.sorted()
        let temp3 = temp2[k]
        
        return temp3
    }
    
}

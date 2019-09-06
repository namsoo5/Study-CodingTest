//
//  budget.swift
//  CodeTestStudy
//
//  Created by 남수김 on 01/09/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

class 예산{
    
    func solution(_ d:[Int], _ budget:Int) -> Int {
        var result = 0
        var count = 0
        let part = d.sorted()
        
        part.map{ num in
            result += num
            if result <= budget {
                count += 1
            }
        }
        print(count)
        return count
    }
    
}

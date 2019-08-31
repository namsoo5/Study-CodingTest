//
//  watermelon.swift
//  CodeTestStudy
//
//  Created by 남수김 on 30/08/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

class watermelon{
    var result = ""
    
    func solution(_ n:Int) -> String {
        
        for num in 1...n {
            if num % 2 == 0 {
                result.append("박")
            }else{
                result.append("수")
            }
        }
        
        print(result)
        return result
    }
}

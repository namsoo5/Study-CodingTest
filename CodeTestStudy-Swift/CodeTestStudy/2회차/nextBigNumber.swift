//
//  nextBigNumber.swift
//  CodeTestStudy
//
//  Created by 남수김 on 05/09/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

class 다음큰숫자 {
    
    
    func solution(_ n:Int) -> Int {
        var oneCount = 0
        let binaryN = String(n, radix: 2, uppercase: false)
        
        oneCount = binaryCount(s: binaryN)
        
        for num in n+1...1000000{
            
            let s = String(num, radix: 2, uppercase: false)
            let snum = binaryCount(s: s)
            
            if snum == oneCount {
                print(num)
                return num
            }
        }
        return 0
    }
    
    func binaryCount(s: String) -> Int{
        var oneCount = 0
        for n in s {
            if n == "1" {
                oneCount += 1
            }
        }
        return oneCount
    }
}

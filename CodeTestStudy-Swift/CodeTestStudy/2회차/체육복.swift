//
//  체육복.swift
//  CodeTestStudy
//
//  Created by 남수김 on 06/09/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

class 체육복 {
    func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
        
        var result = [Int:Int]()
        var sum = 0
        for i in 1...n{
            result[i] = 1
        }
        
        for l in lost{
            if result.keys.contains(l){
                result[l]! = result[l]! - 1
            }
        }
        
        for r in reserve{
            if result.keys.contains(r){
                result[r]! = result[r]! + 1
            }
        }
        
        for (_, value) in result{
            sum += value
            
            if sum > n{
                sum = n
                break
            }
        }
        
        
        print(result)
        print(sum)
        return sum
    }
}

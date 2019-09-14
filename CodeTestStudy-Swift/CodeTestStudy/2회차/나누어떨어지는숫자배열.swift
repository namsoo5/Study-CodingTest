//
//  나누어떨어지는숫자배열.swift
//  CodeTestStudy
//
//  Created by 남수김 on 11/09/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

class 나누어떨어지는숫자배열{
    func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
        var result = [Int]()
        for element in arr{
            let n = element % divisor
            if n == 0{
                result.append(element)
            }
        }
        if result.isEmpty {
            result.append(-1)
        }
        
        result.sort()
//        print(result)
        return result
    }
}

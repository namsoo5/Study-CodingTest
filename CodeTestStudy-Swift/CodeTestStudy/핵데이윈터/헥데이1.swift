//
//  헥데이1.swift
//  CodeTestStudy
//
//  Created by 남수김 on 2019/10/12.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation


class 헥데이1{
    
    func solution(_ grade:[Int]) -> Int {

        var result = 0
        var last = grade.last!
        for e in grade.reversed(){
            if e > last{
                result += e - last
            }else{
                last = e
            }
        }

        print(result)
        return result
    }
    
}

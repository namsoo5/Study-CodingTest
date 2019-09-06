//
//  hidePhoneNumber.swift
//  CodeTestStudy
//
//  Created by 남수김 on 31/08/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

class 핸드폰번호가리기 {
    func solution(_ phone_number:String) -> String {
        
        var result = ""
        let index = phone_number.count - 4
        var count = 1
        
        for s in phone_number {
            if index < count {
                result.append(s)
            } else{
                result.append("*")
            }
            count += 1
        }
        
        print(result)
        return result
    }
    
    func solution2(_ phone_number:String) -> String {
        return String("\(String(repeating: "*", count: phone_number.count-4))\(phone_number.suffix(4))")
    }
}

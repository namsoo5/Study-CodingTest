//
//  네이버코테1.swift
//  CodeTestStudy
//
//  Created by 남수김 on 24/09/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

class 네이버문제1{
    let topLevel = ["com", "net", "org"]
    func solution(_ emails: [String]) -> Int {
        var result = 0
        for email in emails{
            if checkEmail(email: email) {
                result += 1
            }
        }
    
        print(result)
        return result
    }
    
    func checkEmail(email: String) -> Bool{
        
        let sub = email.split(separator: "@")
        
        if sub.count != 2{  // @가 2개이상이거나 @앞이나 뒤가 비어있는경우에러
            return false
        }
        
        let domain = sub[1].split(separator: ".")
        
        if domain.count != 2{ // 도메인부분 . 이 2개이상이거나 없을때에러
            return false
        }
    
        for top in topLevel{
            if domain[1] == top {
                return true
            }
        }
        
        return false
    }
}

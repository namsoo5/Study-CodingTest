//
//  가운데글자가져오기.swift
//  CodeTestStudy
//
//  Created by 남수김 on 10/09/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

class 가운데글자{
    func solution(_ s:String) -> String {
        
        let count = s.count
        var result = ""
        let half = count/2
        
        
        if count % 2 == 0{
            let start = s.index(s.startIndex, offsetBy: half-1)
            let end = s.index(s.startIndex, offsetBy: half)
            
            result = String(s[start...end])
//            print(s[start...end])
            
        }else{
            let start = s.index(s.startIndex, offsetBy: half)
            result = String(s[start])
//            print(s[start])
            
        }
        
        return result
    }
}

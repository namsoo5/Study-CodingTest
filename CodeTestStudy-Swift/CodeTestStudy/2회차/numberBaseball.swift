//
//  numberBaseball.swift
//  CodeTestStudy
//
//  Created by 남수김 on 05/09/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

class 숫자야구{
    var result = 0
    func solution(_ baseball:[[Int]]) -> Int {
        
        let sortArray = baseball.sorted{ $0[1] > $1[1] }
        print(sortArray)
        
        
        return result
    }
    
    func process(){
        
    }
    
    
}

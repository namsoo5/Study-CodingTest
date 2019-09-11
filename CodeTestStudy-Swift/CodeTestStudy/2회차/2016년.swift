//
//  2016년.swift
//  CodeTestStudy
//
//  Created by 남수김 on 10/09/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

class 년2016{
    func solution(_ a:Int, _ b:Int) -> String {
        let weeks = ["FRI","SAT","SUN","MON","TUE","WED","THU"] //0,1,2,3,4,5,6
        var day = -1
        
        for i in 1..<a{
            
            switch i{
            case 1,3,5,7,8,10,12:
                day += 31
            case 4,6,9,11:
                day += 30
            case 2:
                day += 29
                
            default:
                break
                
            }
            
            
        }
        day += b
//        print(day)
        
        
        let calendar = day%7
//        print(weeks[calendar])
        
        
        
        
        return weeks[calendar]
    }
}

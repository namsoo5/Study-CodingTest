//
//  쇠막대기.swift
//  CodeTestStudy
//
//  Created by 남수김 on 12/09/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

class 쇠막대기{
    
    func solution(_ arrangement:String) -> Int {
        
        var openNum = 0
        var result = 0
        var before = ""
    
        
        //index사용 시간초과
        
        for s in arrangement{
            
            // 열린괄호시 체크
            if s == "("{
                openNum += 1
                
            }else if s == ")"{
                if before == "(" {   // ()시 열린괄호수만큼 더하기
                    openNum -= 1
                    result += openNum
                }else{            // 막대기 끝날시 1개더해주기
                    openNum -= 1
                    result += 1
                }
            }
            
            before = String(s)
        }
//        print(result)
        
        return result
    }
    
}

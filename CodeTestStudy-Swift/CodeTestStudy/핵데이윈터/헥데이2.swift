//
//  헥데이2.swift
//  CodeTestStudy
//
//  Created by 남수김 on 2019/10/12.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation
//("<v>AB^CYv^XAZ", ["v>AB^CYv^XA","<v>A","^XAZ","Yv^XA",">AB^"], [50, 18, 20, 30, 25])
class 헥데이2{

    func solution(_ command:String, _ buttons:[String], _ scores:[Int]) -> Int {
        
        let result = check(command: command, btArray: buttons, score: scores)
        print(result)
        return result
    }
    
    func check(command: String, btArray: [String], score:[Int]) -> Int{
        
        var confirmIndex = [Int]()
        var index = 0
        for bt in btArray{
            if command.contains(bt){
                confirmIndex.append(index)
            }
            index += 1
        }
    
        if confirmIndex.count == 0{
            return command.count
        }
        
        var max = command.count
        for i in confirmIndex{
            var sum = 0
            let sub = command.components(separatedBy: btArray[i])
            sum += score[i]
            for s in sub{
                sum += check(command: s, btArray: btArray, score: score)
            }
            
            if sum > max {
                max = sum
            }
        }
       
        return max
    }
}

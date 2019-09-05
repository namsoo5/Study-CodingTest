//
//  findSosu.swift
//  CodeTestStudy
//
//  Created by 남수김 on 02/09/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

class 소수찾기 {
    
    var sosu = [Int]()
    var part = [Int]()
    
    func solution(_ numbers:String) -> Int {
        
        
        var set = [Int]()
        
        
        for s in numbers{
            if let num = Int(String(s)) {
                set.append(num)
            }
        }
        
        
        for i in 0..<set.count{
            part.removeAll()
            part.append(set[i])
            sosuSearch(num: set[i])
            partNumber(set: set, index: i, before: set[i])
                        print(part)
        }
        
                print("sosu: \(sosu)")
        return sosu.count
    }
    
    func partNumber(set: [Int], index: Int, before: Int){
        
        var temp = set
        temp.remove(at: index)
        let beforeNum = before * 10
        
        for i in 0..<temp.count {
            let partNum = beforeNum + temp[i]
            part.append(partNum)
            sosuSearch(num: partNum)
            partNumber(set: temp, index: i, before: part[part.count-1])
        }
        
    }
    
    func sosuSearch(num: Int){
        
        if num < 2 {
            return
        }
        if sosu.contains(num){
            //            print("\(num)은 소수입니다.")
            return
        }
        
        for i in 2..<num {
            
            if num%i == 0{
                //                print("\(num) % \(i) 가 소수가아닙니다")
                return
            }
            
        }
        if sosu.contains(num) {
            return
        }
        sosu.append(num)
        return
    }
}

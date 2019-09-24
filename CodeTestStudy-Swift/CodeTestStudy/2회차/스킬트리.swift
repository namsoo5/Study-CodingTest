//
//  스킬트리.swift
//  CodeTestStudy
//
//  Created by 남수김 on 19/09/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

class 스킬트리{
    
    var skillExist = Array<Int>.init(repeating: 0, count: 26)
    var skillQueue = Queue4()
    
    func solution(_ skill:String, _ skill_trees:[String]) -> Int {
        var result = 0
        스킬확인(s: skill)
        for i in 0..<skill.count{
            let index = skill.index(skill.startIndex, offsetBy: i)
            let s = String(skill[index])
            skillQueue.add(element: s)
        }
        
        for s in skill_trees{
            if 스킬트리가능여부(s: s, que: skillQueue){
                print(s)
                result += 1
            }
        }
//        print(result)
        return result
    }
    
    func 스킬확인(s: String){
        for c in s.utf16{
            let index = Int(c - 65)  //인덱스에 스킬트리 존재하는 경우표시 0:A
            skillExist[index] = 1
        }
    }
    
    func 스킬트리가능여부(s: String, que: Queue4) -> Bool{
        var queue = que
        for c in s.utf16{
            let 스킬 = Int(c - 65)
            
            if skillExist[스킬] == 1 { //스킬트리순서가 존재한다면
                if queue.size()>0{
                    if queue.first() == String(UnicodeScalar(c)!) {  //스킬트리 순서대로라면
                        queue.remove()
                    }else{
                        return false
                    }
                }
            }
            
        }
        
        return true
    }
    
}

struct Queue4: QueStack{
    var save = [String]()
    
    mutating func add(element: String) {
        self.save.append(element)
    }
    
    mutating func first() -> String {
        return self.save[0]
    }
    
    func size() -> Int {
        return save.count
    }
    
    mutating func remove(){
        self.save.removeFirst()
    }
    
    
}
